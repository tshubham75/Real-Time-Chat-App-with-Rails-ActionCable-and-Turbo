//app/javascript/controllers/reset_form_controller.js
import { Controller } from "stimulus"

export default class extends Controller {
  reset() {
    this.element.reset()
  }
}