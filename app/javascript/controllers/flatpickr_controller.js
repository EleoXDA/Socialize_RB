import { Controller } from "@hotwired/stimulus"

import flatpickr from "flatpickr"
export default class extends Controller {
}
flatpickr(".datepicker", {
  altInput: true,
  enableTime: true
});
