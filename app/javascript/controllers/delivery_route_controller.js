import { Controller } from "@hotwired/stimulus"
// import MapboxDirections from '@mapbox/mapbox-gl-directions/dist/mapbox-gl-directions'

// Connects to data-controller="itinerary"
export default class extends Controller {
  static values = {
    apiKey: String,
    marker: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    let directions = new MapboxDirections({
      accessToken: mapboxgl.accessToken,
      unit: 'metric',
      profile: 'mapbox/driving',
      controls: {instructions: false}
    });

    this.map = new mapboxgl.Map({
      container: this.element,
      center: [57.5522, -20.3000],
      zoom: 9,
      style: "mapbox://styles/mapbox/streets-v10"
    })

    this.map.addControl(directions, 'top-left');

    this.map.addControl(new mapboxgl.GeolocateControl({
      positionOptions: {
      enableHighAccuracy: true
      },
      trackUserLocation: true,
      showUserHeading: true,
      showUserLocation: true,
      fitBoundsOptions: {maxZoom:15}
    }))

    this.#addMarkerToMap();

    navigator.geolocation.getCurrentPosition(position => {
      const { latitude, longitude } = position.coords;
      // window.location.reload()
      if (this.map.loaded()) {
        directions.setOrigin([longitude, latitude]);
        directions.setDestination([this.markerValue[0].lng, this.markerValue[0].lat]);
      } else {
        this.map.on("load", () => {
          directions.setOrigin([longitude, latitude]);
          directions.setDestination([this.markerValue[0].lng, this.markerValue[0].lat]);
        })
      }
     })
  }

  #addMarkerToMap() {
    this.markerValue.forEach((marker) => {
      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(this.map)
    })
  }
}
