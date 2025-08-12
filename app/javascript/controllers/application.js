import { Application } from "@hotwired/stimulus"
import "controllers/auth"
import "controllers/layout"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

