import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!

flatpickr(".datepicker", {})

flatpickr(".datepicker-unavailable", {
  disable: gon.unavailable_dates
})
