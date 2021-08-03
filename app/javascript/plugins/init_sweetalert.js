import swal from "sweetalert";

const initSweetalert = (selector, options = {}) => {
  const swalButton = document.querySelector(selector);
  if (swalButton) {
    swalButton.addEventListener("click", (event) => {
      event.preventDefault();
      swal(options);
    });
  }
};

export { initSweetalert };
