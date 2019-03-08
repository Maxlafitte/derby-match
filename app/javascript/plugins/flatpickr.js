import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
flatpickr.l10ns.default.firstDayOfWeek = 1; // Monday
flatpickr(".datepicker", {inline:true})

const disabled = document.querySelector(".datepicker-unavailable")

if (disabled) {
  flatpickr(".datepicker-unavailable", {
    disable: gon.unavailable_dates,
    inline:true
  })
}
