import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="chatroom-subscription"
import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable";

export default class extends Controller {
  static values = { chatroomID: Number }
  static targets = ["messages"]

  connect() {
    this.channel = createConsumer().subscriptions.create(
      { channel: "ChatroomChannel", id: this.chatroomIdValue },
      { received: data => console.log(data) }
    )
    console.log(`Subscribed to the chatroom with the id ${this.chatroomIdValue}.`)
  }
}
