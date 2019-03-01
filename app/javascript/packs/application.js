import "bootstrap";
import "../plugins/flatpickr";
import 'select2/dist/css/select2.css';
import { initSelect2 } from '../plugins/init_select2';

initSelect2();
console.log('io');
import { initSweetalert } from '../plugins/init_sweetalert';

initSweetalert('#sweet-alert-demo', {
        title: "Request sent!",
        icon: "success",
        button: "Yay!"}, (value) => {
  console.log(value);
});
