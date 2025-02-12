<?php
$host = 'localhost';// or your database host
$dbname = 'nbsc_web';
$username = 'root';
$password = '';
try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo '<script>alert("It was connected")</script>';
} catch (PDOException $e) {
    die("ERROR: Could not connect. " . $e->getMessage());
}
?>
