import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!

flatpickr(".datepicker", {inline:true})
flatpickr.l10ns.default.firstDayOfWeek = 1; // Monday

const disabled = document.querySelector(".datepicker-unavailable")

if (disabled) {
  flatpickr(".datepicker-unavailable", {
    disable: gon.unavailable_dates,
    inline:true
  })
}
