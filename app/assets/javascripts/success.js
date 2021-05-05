document.addEventListener("DOMContentLoaded", function (event) {
  async function postPatient() {
    try {
      const response = await fetch(
        "https://cors-anywhere.herokuapp.com/https://challenge-28h.herokuapp.com/doctors/assign",
        {
          method: "POST",
          body: JSON.stringify({
            name: "Test Patient",
            email: "test@gmail.com",
            date_of_birth: "1984-01-01",
            state: "NY",
          }),
          headers: { "Content-type": "application/json; charset=UTF-8" },
        }
      )
      const data = response.json()
      return data
    } catch(error) {
      console.log(error);
    }
  }
  postPatient()
});