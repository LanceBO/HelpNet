import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="scrollelement"
export default class extends Controller {
  connect() {
    window.onscroll = function() {myFunction()};
    function myFunction() {
      if (document.documentElement.scrollTop > 0) {
        document.querySelector(".scroll").classList.toggle("slideUp");
      }
    }

    window.onload = function myFunction2() {
        document.querySelector(".onload").classList.toggle("slideUponLoad");
    }

  }

}
