import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="datepicker"
export default class extends Controller {
  connect() {
    console.log('conectou date-picker')
    flatpickr(this.element, {
      mode: "range",
      minDate: "today",
      dateFormat: "Y/d/m",
  })
  }
}
