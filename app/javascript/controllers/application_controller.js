import { Controller } from "stimulus"

export default class extends Controller {
  connect() {
		this.fonts
  }

  get fonts() {
    var WebFont = require('webfontloader')
    WebFont.load({
      google: {
        families: ['Source Sans Pro:400,700']
      }
    });
  }
}
