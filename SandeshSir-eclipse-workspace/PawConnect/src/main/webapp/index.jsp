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
    <%@ include file="header.jsp" %>
    
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
                    <img src="https://images.unsplash.com/photo-1450778869180-41d0601e046e?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80" alt="Happy pets">
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
                <!-- Adoption Process Card -->
                <div class="feature-card" onclick="window.location.href='pets.jsp'">
                    <div class="feature-icon">
                        <i class="fas fa-dog"></i>
                    </div>
                    <h3>Easy Adoption Process</h3>
                    <p>Find your perfect pet with our simple and transparent adoption process.</p>
                    <button class="learn-more-btn">Start Adoption</button>
                </div>
                
                <!-- Fast Delivery Card -->
                <div class="feature-card" onclick="window.location.href='delivery.jsp'">
                    <div class="feature-icon">
                        <i class="fas fa-shipping-fast"></i>
                    </div>
                    <h3>Fast Delivery</h3>
                    <p>Get all your pet supplies delivered right to your doorstep.</p>
                    <button class="learn-more-btn">Shop Now</button>
                </div>
                
                <!-- Veterinary Support Card -->
                <div class="feature-card" onclick="window.location.href='vet-care.jsp'">
                    <div class="feature-icon">
                        <i class="fas fa-user-md"></i>
                    </div>
                    <h3>Veterinary Support</h3>
                    <p>Access our network of trusted veterinarians for your pet's health needs.</p>
                    <button class="learn-more-btn">Book Appointment</button>
                </div>
            </div>
        </div>
    </section>

    <!-- Statistics Section -->
    <section class="stats-section">
        <div class="container">
            <div class="stats-grid">
                <div class="stat-card">
                    <div class="stat-number" data-target="500">0</div>
                    <div class="stat-label">Pets Adopted</div>
                </div>
                <div class="stat-card">
                    <div class="stat-number" data-target="1000">0</div>
                    <div class="stat-label">Happy Families</div>
                </div>
                <div class="stat-card">
                    <div class="stat-number" data-target="50">0</div>
                    <div class="stat-label">Partner Vets</div>
                </div>
                <div class="stat-card">
                    <div class="stat-number" data-target="24">0</div>
                    <div class="stat-label">Hours Support</div>
                </div>
            </div>
        </div>
    </section>

<!-- Testimonials Section with Actual Photos -->
<section class="testimonials">
    <div class="container">
        <div class="section-title">
            <h2>What Pet Parents Say</h2>
            <p>Read stories from our happy customers</p>
        </div>
        <div class="testimonials-grid">
            <div class="testimonial-card">
                <div class="testimonial-content">
                    <p>"PawConnect helped me find my perfect companion, Max. The adoption process was smooth and the team was very supportive throughout!"</p>
                </div>
                <div class="testimonial-author">
                    <img src="https://i.pravatar.cc/100?img=1" alt="Sarah Johnson" onerror="this.style.display='none'">
                    <div>
                        <h4>Sarah Johnson</h4>
                        <span>Dog Mom</span>
                    </div>
                </div>
            </div>
            <div class="testimonial-card">
                <div class="testimonial-content">
                    <p>"The veterinary services are exceptional! Dr. Smith took great care of my cat Luna during her emergency. Highly recommended!"</p>
                </div>
                <div class="testimonial-author">
                    <img src="https://i.pravatar.cc/100?img=2" alt="Mike Chen" onerror="this.style.display='none'">
                    <div>
                        <h4>Mike Chen</h4>
                        <span>Cat Dad</span>
                    </div>
                </div>
            </div>
            <div class="testimonial-card">
                <div class="testimonial-content">
                    <p>"Fast delivery and great quality products! My dog Buddy loves his new toys and the food delivery service is a lifesaver."</p>
                </div>
                <div class="testimonial-author">
                    <img src="https://i.pravatar.cc/100?img=3" alt="Priya Sharma" onerror="this.style.display='none'">
                    <div>
                        <h4>Priya Sharma</h4>
                        <span>Pet Parent</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

    <%@ include file="footer.jsp" %>
    
    <script>
        // Animated counters
        function animateCounters() {
            const counters = document.querySelectorAll('.stat-number');
            const speed = 200;

            counters.forEach(counter => {
                const target = +counter.getAttribute('data-target');
                const increment = target / speed;
                let current = 0;

                const updateCounter = () => {
                    if (current < target) {
                        current += increment;
                        counter.innerText = Math.ceil(current);
                        setTimeout(updateCounter, 10);
                    } else {
                        counter.innerText = target;
                    }
                };

                updateCounter();
            });
        }

        // Intersection Observer for counter animation
        const observer = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    animateCounters();
                }
            });
        });

        observer.observe(document.querySelector('.stats-section'));

        // Feature card hover effects
        document.addEventListener('DOMContentLoaded', function() {
            const featureCards = document.querySelectorAll('.feature-card');
            
            featureCards.forEach(card => {
                card.addEventListener('mouseenter', function() {
                    this.style.transform = 'translateY(-10px) scale(1.02)';
                });
                
                card.addEventListener('mouseleave', function() {
                    this.style.transform = 'translateY(0) scale(1)';
                });
            });
        });
    </script>
</body>
</html>