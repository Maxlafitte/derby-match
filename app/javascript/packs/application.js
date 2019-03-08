import "bootstrap";
import "../plugins/flatpickr";

import 'select2/dist/css/select2.css';
import { initSelect2 } from '../plugins/init_select2';
initSelect2();

import { initSweetalert } from '../plugins/init_sweetalert';
if (document.getElementById("request-sent")) {
  initSweetalert('#request-sent', {
          title: "Request sent!",
          icon: "success",
          button: "Yay!"}, (value) => {
    console.log(value);
  });
}

import {activeLabels} from '../plugins/active-label';
activeLabels();


$(".alert" ).delay(2000).fadeOut(1000);
$(".alert-success" ).delay(2000).fadeOut(1000);
$(".alert-danger" ).delay(2000).fadeOut(1000);
