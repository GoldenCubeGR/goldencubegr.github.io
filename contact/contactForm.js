document.getElementById('contactForm').addEventListener('submit', function(e) {
    e.preventDefault();

    const formData = {
        name: document.getElementById('name').value,
        email: document.getElementById('email').value,
        subject: document.getElementById('subject').value,
        message: document.getElementById('message').value
    };

    // Send email using SMTP (Gmail) server
    sendEmail(formData);
});

function sendEmail(formData) {
    Email.send({
        Host: "smtp-relay.gmail.com",
        Username: "your_service_account_email@gmail.com", // Your service account email address
        Password: "your_service_account_password", // Your service account password
        To: "recipient@example.com", // Recipient's email address
        From: formData.email, // Sender's email address (from contact form)
        Subject: formData.subject,
        Body: `Name: ${formData.name}\nEmail: ${formData.email}\nMessage: ${formData.message}`
    }).then(
        message => {
            if (message === "OK") {
                document.getElementById('status').innerText = 'Message sent successfully!';
                document.getElementById('contactForm').reset();
            } else {
                throw new Error('Error sending message');
            }
        }
    ).catch(error => {
        document.getElementById('status').innerText = 'Error: ' + error.message;
    });
}
