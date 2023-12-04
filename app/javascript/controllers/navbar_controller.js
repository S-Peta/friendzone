import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = ["nav"]

  connect() {
    console.log("oi")
  }

  updateColor() {
    if (window.scrollY >= this.bannerTarget.offsetHeight) {
      this.navTarget.classList.remove("nav-transparent")
    } else {
      this.navTarget.classList.add("nav-transparent")
    }
  }

  fixFilter() {
    console.log(this.navTarget.offsetHeight);
  }

}
