// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports

import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
import { dashboard } from '../dashboard/material-dashboard';
import { dashboard_bootstrap } from '../dashboard/core/bootstrap-material-design';
import { dashboard_jquery } from '../dashboard/core/jquery';
import { dashboard_popper } from '../dashboard/core/popper';
import { dashboard_notify } from '../dashboard/plugins/bootstrap-notify';
import { dashboard_chartist } from '../dashboard/plugins/chartist';
import { dashboard_scrollbar } from '../dashboard/plugins/perfect-scrollbar.jquery.js';
import { dashboard_unpkg } from '../dashboard/unpkg';


document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
});
