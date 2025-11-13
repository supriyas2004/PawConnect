<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pet Supplies Delivery - PawConnect</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <%@ include file="header.jsp" %>
    
    <section class="service-hero">
        <div class="container">
            <div class="hero-content">
                <div class="hero-text">
                    <h1>Pet Supplies Delivery</h1>
                    <p>Get all your pet essentials delivered to your doorstep. Fast, reliable, and convenient.</p>
                    <div class="hero-buttons">
                        <button class="btn btn-primary" onclick="scrollToProducts()">Shop Now</button>
                        <button class="btn btn-secondary" onclick="scrollToTracking()">Track Order</button>
                    </div>
                </div>
                <div class="hero-image">
                    <img src="https://images.unsplash.com/photo-1608408891486-f0e0b8dd2ab5?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80" alt="Pet Supplies">
                </div>
            </div>
        </div>
    </section>

    <section class="delivery-features">
        <div class="container">
            <div class="features-grid">
                <div class="delivery-feature-card">
                    <i class="fas fa-shipping-fast"></i>
                    <h3>Same Day Delivery</h3>
                    <p>Orders before 2 PM delivered same day</p>
                </div>
                <div class="delivery-feature-card">
                    <i class="fas fa-truck"></i>
                    <h3>Free Delivery</h3>
                    <p>Free delivery on orders above ₹999</p>
                </div>
                <div class="delivery-feature-card">
                    <i class="fas fa-map-marker-alt"></i>
                    <h3>Real-time Tracking</h3>
                    <p>Track your delivery in real-time</p>
                </div>
                <div class="delivery-feature-card">
                    <i class="fas fa-undo"></i>
                    <h3>Easy Returns</h3>
                    <p>7-day easy return policy</p>
                </div>
            </div>
        </div>
    </section>

    <section class="products-section" id="products">
        <div class="container">
            <div class="section-title">
                <h2>Shop Pet Supplies</h2>
                <p>Everything your pet needs, delivered fast</p>
            </div>
            
            <div class="category-filters">
                <button class="filter-btn active" data-category="all">All Products</button>
                <button class="filter-btn" data-category="food">Food</button>
                <button class="filter-btn" data-category="toys">Toys</button>
                <button class="filter-btn" data-category="health">Health Care</button>
                <button class="filter-btn" data-category="accessories">Accessories</button>
            </div>
            
            <div class="products-grid">
                <!-- Product 1 -->
                <div class="product-card" data-category="food">
                    <img src="https://images.unsplash.com/photo-1589924691995-400dc9ecc119?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80" alt="Dog Food">
                    <div class="product-info">
                        <h3>Premium Dog Food</h3>
                        <p class="product-desc">Nutritionally balanced adult dog food</p>
                        <div class="price">₹1,299</div>
                        <div class="product-actions">
                            <button class="btn btn-primary" onclick="addToCart('Premium Dog Food', 1299)">Add to Cart</button>
                        </div>
                    </div>
                </div>
                
                <!-- Product 2 -->
                <div class="product-card" data-category="toys">
                    <img src="https://images.unsplash.com/photo-1554456854-55a089fd4cb2?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80" alt="Cat Toy">
                    <div class="product-info">
                        <h3>Interactive Cat Toy</h3>
                        <p class="product-desc">Electronic feather toy for cats</p>
                        <div class="price">₹599</div>
                        <div class="product-actions">
                            <button class="btn btn-primary" onclick="addToCart('Interactive Cat Toy', 599)">Add to Cart</button>
                        </div>
                    </div>
                </div>
                
                <!-- Add more products as needed -->
            </div>
        </div>
    </section>

    <section class="tracking-section" id="tracking">
        <div class="container">
            <div class="section-title">
                <h2>Track Your Order</h2>
                <p>Enter your tracking number to check delivery status</p>
            </div>
            
            <div class="tracking-form">
                <input type="text" id="trackingNumber" placeholder="Enter tracking number">
                <button class="btn btn-primary" onclick="trackOrder()">Track Order</button>
            </div>
            
            <div id="trackingResult" class="tracking-result" style="display: none;">
                <!-- Tracking results will appear here -->
            </div>
        </div>
    </section>

    <%@ include file="footer.jsp" %>
    
    <script>
        function scrollToProducts() {
            document.getElementById('products').scrollIntoView({ behavior: 'smooth' });
        }
        
        function scrollToTracking() {
            document.getElementById('tracking').scrollIntoView({ behavior: 'smooth' });
        }
        
        function addToCart(productName, price) {
            alert(productName + ' added to cart! ₹' + price);
            // Add actual cart functionality here
        }
        
        function trackOrder() {
            const trackingNum = document.getElementById('trackingNumber').value;
            if (!trackingNum) {
                alert('Please enter a tracking number');
                return;
            }
            
            const resultDiv = document.getElementById('trackingResult');
            resultDiv.innerHTML = `
                <div class="tracking-status">
                    <h3>Order Status: In Transit</h3>
                    <div class="tracking-timeline">
                        <div class="timeline-step completed">
                            <i class="fas fa-check-circle"></i>
                            <span>Order Placed</span>
                            <small>Nov 13, 9:00 AM</small>
                        </div>
                        <div class="timeline-step completed">
                            <i class="fas fa-check-circle"></i>
                            <span>Processing</span>
                            <small>Nov 13, 10:30 AM</small>
                        </div>
                        <div class="timeline-step active">
                            <i class="fas fa-shipping-fast"></i>
                            <span>Out for Delivery</span>
                            <small>Expected by 3:00 PM</small>
                        </div>
                        <div class="timeline-step">
                            <i class="fas fa-home"></i>
                            <span>Delivered</span>
                            <small>Pending</small>
                        </div>
                    </div>
                </div>
            `;
            resultDiv.style.display = 'block';
        }
        
        // Filter products by category
        document.querySelectorAll('.filter-btn').forEach(btn => {
            btn.addEventListener('click', function() {
                document.querySelectorAll('.filter-btn').forEach(b => b.classList.remove('active'));
                this.classList.add('active');
                
                const category = this.getAttribute('data-category');
                document.querySelectorAll('.product-card').forEach(card => {
                    if (category === 'all' || card.getAttribute('data-category') === category) {
                        card.style.display = 'block';
                    } else {
                        card.style.display = 'none';
                    }
                });
            });
        });
    </script>
</body>
</html>