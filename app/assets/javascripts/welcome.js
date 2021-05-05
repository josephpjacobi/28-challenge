// The submit button disabled until all fields are filled and checks are made
document.addEventListener("DOMContentLoaded", function (event) {
  const nameInput = document.getElementById("full_name");
  const emailInput = document.getElementById("email");
  const dobInput = document.getElementById("date_of_birth");
  const stateInput = document.getElementById("state_id");
  const submitButton = document.getElementById("user_submit");

  stateInput.addEventListener("change", function () {
    validateFormInputs();
  });

  document.querySelectorAll("input").forEach((node) => {
    node.addEventListener("keyup", (event) => {
      validateFormInputs();
    });
  });

  stateInput.addEventListener("change", function (event) {
    const selectedState = event.target.value;
    const { service_offered, age } = document.getElementById(
      selectedState
    ).dataset;
    validateState(service_offered);
    validateAge(age);
  });

  // Function that checks all values are present
  function checkInputLengths() {
    return (
      nameInput.value.length === 0 ||
      emailInput.value.length === 0 ||
      dobInput.value.length === 0 ||
      stateInput.value.length === 0
    );
  }

  function validateFormInputs() {
    if (checkInputLengths()) {
      submitButton.disabled = "disabled";
    } else submitButton.disabled = false;
  }

  // Check Valid Age:
  // getAge Function found here: https://stackoverflow.com/questions/4060004/calculate-age-given-the-birth-date-in-the-format-yyyymmdd/7091965#7091965
  function getAge(date) {
    const today = new Date();
    const birthDate = new Date(date);
    let age = today.getFullYear() - birthDate.getFullYear();
    const m = today.getMonth() - birthDate.getMonth();
    if (m < 0 || (m === 0 && today.getDate() < birthDate.getDate())) {
      age--;
    }
    return age;
  }

  function validateAge(ageRequirement) {
    const birthDate = dobInput.value;
    if (ageRequirement >= getAge(birthDate)) {
      alert("You do not meet the age requirement in your state.");
      submitButton.disabled = "disabled";
    }
  }

  // Check is state valid
  function validateState(serviceOffered) {
    if (serviceOffered === 'false') {
      alert("We do not provide services to your state.");
      submitButton.disabled = "disabled";
    }
  }
});

