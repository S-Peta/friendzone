import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="datepicker"
export default class extends Controller {
  connect() {
    flatpickr(this.element, {
      mode: "range",
      minDate: "today",
      altInput: true,
      altFormat: "F j, Y",
      dateFormat: "Y/d/m",
      inline: true,

      "locale": {
        "firstDayOfWeek": 1 // start week on Monday
      }
    })
    Array.from(document.getElementsByClassName("form-control")).forEach( (input)=> {
      input.classList.add("d-none")
    })
  }
}
