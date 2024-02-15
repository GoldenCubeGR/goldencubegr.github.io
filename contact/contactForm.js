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
        Host: "smtp.gmail.com",
        Username: "goldencubemailing@gmail.com", // Your Gmail address
        Password: "GoOdMoRnIngUsA2010-2024@goldencube", // Your Gmail password
        To: "info@goldencube.dev", // Recipient's email address
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
