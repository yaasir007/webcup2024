import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar-scroll"
export default class extends Controller {
  static targets = [ "navbar" ]

  connect() {
    window.addEventListener("scroll", () => {
      if (window.scrollY >= 150 ) {
        this.navbarTarget.classList.add("navbar-scrolled")
      } else if (window.scrollY < 150 ) {
        this.navbarTarget.classList.remove("navbar-scrolled")
      }
    })
  }
}
