import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="delivery-route"
export default class extends Controller {
  static values = {
    apiKey: String,
    coordinates: Array
  }
  static targets = ["map"]

  connect() {
    const dropoffs = turf.featureCollection(this.coordinatesValue);

    navigator.geolocation.getCurrentPosition(position => {
      const { latitude, longitude } = position.coords;
      const chefPosition = [longitude, latitude]
      this.initMap(chefPosition, dropoffs)
    })

    this.getOptimizedRoute(dropoffs)
  }

  initMap(chefPosition, dropoffs) {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.mapTarget,
      style: "mapbox://styles/mapbox/streets-v10",
      center: chefPosition,
      zoom: 13
    })

    this.map.addControl(new mapboxgl.GeolocateControl({
      positionOptions: {
      enableHighAccuracy: true
      },
      trackUserLocation: true,
      showUserHeading: true,
      showUserLocation: true,
    }));

    new mapboxgl.Marker()
      .setLngLat(chefPosition)
      .addTo(this.map);

    this.map.on('load', async () => {
      this.map.addLayer({
        id: 'dropoffs-symbol',
        type: 'symbol',
        source: {
          data: dropoffs,
          type: 'geojson'
        },
        layout: {
          'icon-allow-overlap': true,
          'icon-ignore-placement': true,
          'icon-image': 'marker-15'
        }
      });

      this.map.addSource('route', {
        type: 'geojson',
        data: nothing
      });

      this.map.addLayer(
        {
          id: 'routeline-active',
          type: 'line',
          source: 'route',
          layout: {
            'line-join': 'round',
            'line-cap': 'round'
          },
          paint: {
            'line-color': '#3887be',
            'line-width': ['interpolate', ['linear'], ['zoom'], 12, 3, 22, 12]
          }
        },
        'waterway-label'
      );

      this.map.addLayer(
        {
          id: 'routearrows',
          type: 'symbol',
          source: 'route',
          layout: {
            'symbol-placement': 'line',
            'text-field': '▶',
            'text-size': [
              'interpolate',
              ['linear'],
              ['zoom'],
              12,
              24,
              22,
              60
            ],
            'symbol-spacing': [
              'interpolate',
              ['linear'],
              ['zoom'],
              12,
              30,
              22,
              160
            ],
            'text-keep-upright': false
          },
          paint: {
            'text-color': '#3887be',
            'text-halo-color': 'hsl(55, 11%, 96%)',
            'text-halo-width': 3
          }
        },
        'waterway-label'
      );
    });
  }

  updateDropoffs(geojson) {
    this.map.getSource('dropoffs-symbol').setData(geojson);
  }

  assembleQueryURL(coordinates) {
    return `https://api.mapbox.com/optimized-trips/v1/mapbox/driving/${coordinates.join(';')}?distributions=${distributions.join(
    ';')}&overview=full&steps=true&geometries=geojson&source=first&access_token=${
    this.apiKeyValue}`;
  }

  async getOptimizedRoute(coordinates) {
    const query = await fetch(this.assembleQueryURL(coordinates), { method: 'GET' });
    const response = await query.json();

    if (response.code !== 'Ok') {
      const handleMessage =
      response.code === 'InvalidInput'
      ? 'Refresh to start a new route. For more information: https://docs.mapbox.com/api/navigation/optimization/#optimization-api-errors'
      : 'Try a different point.';
      alert(`${response.code} - ${response.message}\n\n${handleMessage}`);
      // Remove invalid point
      dropoffs.features.pop();
      delete pointHopper[pt.properties.key];
      return;
    }

    const routeGeoJSON = turf.featureCollection([
      turf.feature(response.trips[0].geometry)
    ]);

    this.map.getSource('route').setData(routeGeoJSON);
  }
}
