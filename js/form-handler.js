document.addEventListener('DOMContentLoaded', function () {
    const form = document.querySelector('form[name="patient-form"]');
    
    form.addEventListener('submit', function (event) {
        // This line stops the browser from sending the POST request to the server
        event.preventDefault(); 

        const dinValue = document.getElementById('din').value;

        if (dinValue === "1234567890") {
            window.location.href = "patient/index.asp";
        } else {
            alert("Invalid DIN number.");
        }
    });
});

