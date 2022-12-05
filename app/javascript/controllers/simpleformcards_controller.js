import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="simpleformcards"
export default class extends Controller {
  connect() {

    let formcard = document.querySelector('.simple_form');
  let element = document.querySelectorAll('.form-check');
  element.forEach((element) => {
  element.addEventListener("click", function () {
    formcard.submit();
    });
  });

  }
}
