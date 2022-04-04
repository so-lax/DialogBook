import { Application } from "@hotwired/stimulus"
import Rails from 'rails-ujs'
require("@rails/ujs").start()
const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

