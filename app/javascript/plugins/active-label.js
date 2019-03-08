function activeLabels(){
  if (document.querySelectorAll(".collection_radio_buttons").length > 0){
    const labels = document.querySelectorAll(".collection_radio_buttons");

    labels.forEach((label) => {
      label.addEventListener(("click"), function(event){
        labels.forEach((label) => {label.classList.remove("green")})
        event.currentTarget.classList.add("green")
      })
    });
  }
}

export {activeLabels};

