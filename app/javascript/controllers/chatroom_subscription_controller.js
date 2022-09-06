import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="chatroom-subscription"
// import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable";

export default class extends Controller {
  static values = { chat_roomID: Number }
  static targets = ["messages"]

  connect() {
    this.channel = consumer().subscriptions.create(
      { channel: "ChatroomChannel", id: this.chat_roomIdValue },
      { received: data => this.#insertMessageAndScrollDown(data) }
    )
    console.log(`Subscribed to the chatroom with the id ${this.chatroomIdValue}.`)
  }

  #insertMessageAndScrollDown(data) {
    this.messagesTarget.insertAdjacentHTML("beforeend", data)
    this.messagesTarget.scrollTo(0)
    // this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
  }

  resetForm(event) {
    event.target.reset()
  }

  disconnect() {
    console.log("Unsubscribed from the chatroom")
    this.channel.unsubscribe()
  }
}
