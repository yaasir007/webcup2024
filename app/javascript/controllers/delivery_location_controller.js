import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="delivery-location"
export default class extends Controller {
  static values = {
    apiKey: String,
  }

  static targets = ["longitude", "latitude", "map"]

  connect() {
    navigator.geolocation.getCurrentPosition(position => {
      const { latitude, longitude } = position.coords;
      const userPosition = [longitude, latitude]
      this.initMap(userPosition)
    })
  }

  initMap(userPosition) {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.mapTarget,
      style: "mapbox://styles/mapbox/streets-v10",
      center: userPosition,
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

    let marker = new mapboxgl.Marker()
      .setLngLat(userPosition)
      .addTo(this.map);

    window.pickupMarker = marker

    this.map.on('drag', () => {
      let lngLat = this.map.getCenter();
      window.pickupMarker = marker.setLngLat(lngLat);
    });
  }

  sendPickupCoordinates() {
    this.longitudeTarget.value = pickupMarker.getLngLat().lng
    this.latitudeTarget.value = pickupMarker.getLngLat().lat
  }
}
