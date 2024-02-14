<?php
session_start();

// Check if IP address is set in session and last request time is recorded
if(isset($_SESSION['ip']) && isset($_SESSION['last_request_time'])) {
    // Calculate time difference between current request and last request
    $time_diff = time() - $_SESSION['last_request_time'];

    // Check if time difference is less than 15 minutes (900 seconds)
    if($time_diff < 900) {
        // Return error message or perform action to handle rate limit exceeded
        die("You can only send one request every 15 minutes.");
    }
}

// Set session variables for IP address and current request time
$_SESSION['ip'] = $_SERVER['REMOTE_ADDR'];
$_SESSION['last_request_time'] = time();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = $_POST["name"];
    $email = $_POST["email"];
    $message = $_POST["message"];

    // Compose email message
    $to = "info@goldencube.dev";
    $subject = "New Contact Form Submission";
    $body = "Name: $name\n";
    $body .= "Email: $email\n\n";
    $body .= "Message:\n$message";

    // Send email
    if (mail($to, $subject, $body)) {
        echo "Your message has been sent successfully!";
    } else {
        echo "Oops! Something went wrong and we couldn't send your message.";
    }
}

?>
