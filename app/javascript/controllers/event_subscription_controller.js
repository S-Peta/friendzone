import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable";

// Connects to data-controller="event-subscription"
export default class extends Controller {
  static values = { eventId: Number }
  static targets = ["messages", 'container']

  connect() {
    // console.log("controller conectado");
    // console.log(this.eventIdValue);
    this.channel = createConsumer().subscriptions.create(
      { channel:"EventChannel", id: this.eventIdValue },
      { received: data => this.#insertMessageAndScrollDown(data) }
    )
  }

  #insertMessageAndScrollDown(data){
    console.log(data);
    this.messagesTarget.insertAdjacentHTML("beforeend", data)
    this.containerTarget.scrollTo(0, this.containerTarget.scrollHeight)
  }

  resetForm(event) {
    event.target.reset()
    // Turbo.visit(window.location.href, { action: "replace" });
  }
}
