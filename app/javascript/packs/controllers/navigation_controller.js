import { Controller } from "stimulus"
// Javascript
require('velocity-animate');

export default class extends Controller {
  static targets = ["menu", "menuLabel"]

  toggle() {
    this.menu.classList.toggle("is--open");
    this.menuLabel.classList.toggle("is--open");
  }

  get menu() {
    return this.menuTarget
  }

  get menuLabel() {
    return this.menuLabelTarget
  }
}
