import flatpickr from "flatpickr";
const initFlatpickr = () => {
  flatpickr("#appointment_date", {
    enableTime: true,
    dateFormat: "Y-m-d H:i",
    time_24hr: true,
    "disable": [
      function (date) {
        // return true to disable
        console.log(date);
        const today = new Date;
        today.setHours(0,0,0,0);
        return (date < today);
      }
    ],
    "locale": {
      "firstDayOfWeek": 1 // start week on Monday
    }
  });
}

export { initFlatpickr };