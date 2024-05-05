import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="active-link"
export default class extends Controller {
  static targets = ["link"]

  connect() {
    this.linkTargets.forEach (link => {
      console.log(link.href, window.location.href)
      if (link.href === window.location.href) {
        link.classList.add('active-link')
      } else {
        link.classList.remove('active-link')
      }
    })
  }
}
