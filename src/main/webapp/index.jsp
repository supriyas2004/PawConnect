<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PawConnect - Find Your Perfect Pet Companion</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <!-- Header -->
    <header>
        <div class="container">
            <nav class="navbar">
                <div class="logo">
                    <i class="fas fa-paw"></i>
                    <span>PawConnect</span>
                </div>
                <ul class="nav-links">
                    <li><a href="index.jsp">HOME</a></li>
                    <li><a href="pets.jsp">ADOPT</a></li>
                    <li><a href="about.jsp">ABOUT US</a></li>
                    <li><a href="contact.jsp">CONTACT</a></li>
                </ul>
                <div class="auth-buttons">
                    <button class="btn btn-login" onclick="window.location.href='login.jsp'">Login</button>
                    <button class="btn btn-register" onclick="window.location.href='register.jsp'">Register</button>
                </div>
            </nav>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="hero">
        <div class="container">
            <div class="hero-content">
                <div class="hero-text">
                    <h1>Find Your Perfect <span class="highlight">Pet Companion</span></h1>
                    <p>PawConnect is established with the motto "Pet Me Good" which helps you find your dream pet. Our services enable you to cater to all your pet needs with ease and from the comfort of your home.</p>
                    <p>Get all your pet supplies at your doorstep via our application. Our aim is to provide customers with the best services so you can focus on what matters most - the love and care for your furry friends.</p>
                    <div class="hero-buttons">
                        <button class="btn btn-primary" onclick="window.location.href='pets.jsp'">Find a Pet</button>
                        <button class="btn btn-secondary" onclick="window.location.href='about.jsp'">Learn More</button>
                    </div>
                </div>
                <div class="hero-image">
                    <img src="images/hero-pets.jpg" alt="Happy pets" onerror="this.src='https://images.unsplash.com/photo-1450778869180-41d0601e046e?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80'">
                </div>
            </div>
        </div>
    </section>

    <!-- Features Section -->
    <section class="features">
        <div class="container">
            <div class="section-title">
                <h2>Why Choose PawConnect?</h2>
                <p>We provide comprehensive services to make pet adoption and care simple and enjoyable</p>
            </div>
            <div class="features-grid">
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-dog"></i>
                    </div>
                    <h3>Easy Adoption Process</h3>
                    <p>Find your perfect pet with our simple and transparent adoption process.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-shipping-fast"></i>
                    </div>
                    <h3>Fast Delivery</h3>
                    <p>Get all your pet supplies delivered right to your doorstep.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-user-md"></i>
                    </div>
                    <h3>Veterinary Support</h3>
                    <p>Access our network of trusted veterinarians for your pet's health needs.</p>
                </div>
            </div>
        </div>
    </section>

    <%@ include file="footer.jsp" %>
    
    <script src="js/main.js"></script>
</body>
</html>