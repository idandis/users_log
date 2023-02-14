import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="prova"
export default class extends Controller {
  connect() {
    console.log("prova")
  }
}
