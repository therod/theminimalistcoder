import { Controller } from "stimulus"

export default class extends Controller {

  connect() {
    this.fonts
  }

  get fonts() {
    var WebFont = require('webfontloader')
    WebFont.load({
      typekit: { families: ['proxima-nova', 'kepler-std', 'freight-text-pro'], id: 'fjr3bxd', async: true }
    });
  }
}
