// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs";
import Turbolinks from "turbolinks";
import * as ActiveStorage from "@rails/activestorage";
import swal from "sweetalert";
import "channels";

Rails.start();
Turbolinks.start();
ActiveStorage.start();

// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "controllers";
import "bootstrap";

// Internal imports, e.g:
import { initSweetalert } from "../plugins/init_sweetalert";

document.addEventListener("turbolinks:load", () => {
  // Call your functions here, e.g:
  initSweetalert("#sweet-alert", {
    title: "A nice alert",
    text: "This is a great alert, isn't it?",
    icon: "success",
  });
});
