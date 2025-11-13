<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Veterinary Care - PawConnect</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <%@ include file="header.jsp" %>
    
    <section class="service-hero">
        <div class="container">
            <div class="hero-content">
                <div class="hero-text">
                    <h1>Veterinary Care</h1>
                    <p>Professional healthcare services for your beloved pets. Book appointments with trusted veterinarians.</p>
                </div>
                <div class="hero-image">
                    <img src="https://images.unsplash.com/photo-1579165466749-87e5d61a65d8?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80" alt="Veterinary Care">
                </div>
            </div>
        </div>
    </section>

    <section class="service-features">
        <div class="container">
            <div class="features-grid">
                <div class="service-feature-card">
                    <i class="fas fa-stethoscope"></i>
                    <h3>Regular Checkups</h3>
                    <p>Comprehensive health examinations for your pets</p>
                </div>
                <div class="service-feature-card">
                    <i class="fas fa-syringe"></i>
                    <h3>Vaccinations</h3>
                    <p>Complete vaccination schedules and preventive care</p>
                </div>
                <div class="service-feature-card">
                    <i class="fas fa-ambulance"></i>
                    <h3>Emergency Care</h3>
                    <p>24/7 emergency veterinary services</p>
                </div>
                <div class="service-feature-card">
                    <i class="fas fa-teeth"></i>
                    <h3>Dental Care</h3>
                    <p>Professional dental cleaning and oral health services</p>
                </div>
            </div>
        </div>
    </section>

    <section class="appointment-section">
        <div class="container">
            <div class="section-title">
                <h2>Book an Appointment</h2>
                <p>Schedule a visit with our expert veterinarians</p>
            </div>
            
            <div class="appointment-content">
                <div class="vet-list">
                    <h3>Available Veterinarians</h3>
                    <div class="vet-cards">
                        <div class="vet-card">
                            <img src="https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80" alt="Dr. Smith">
                            <div class="vet-info">
                                <h4>Dr. Sarah Smith</h4>
                                <p class="specialization">General Practice & Surgery</p>
                                <p class="experience">10+ years experience</p>
                                <div class="rating">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star-half-alt"></i>
                                    <span>4.5 (120 reviews)</span>
                                </div>
                                <button class="btn btn-primary" onclick="selectVet('Dr. Sarah Smith')">Book Appointment</button>
                            </div>
                        </div>
                        
                        <div class="vet-card">
                            <img src="https://images.unsplash.com/photo-1594824947933-d0501ba2fe65?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80" alt="Dr. Johnson">
                            <div class="vet-info">
                                <h4>Dr. Mike Johnson</h4>
                                <p class="specialization">Emergency & Critical Care</p>
                                <p class="experience">8+ years experience</p>
                                <div class="rating">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <span>5.0 (95 reviews)</span>
                                </div>
                                <button class="btn btn-primary" onclick="selectVet('Dr. Mike Johnson')">Book Appointment</button>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="appointment-form-section">
                    <h3>Schedule Your Visit</h3>
                    <form class="appointment-form" id="appointmentForm">
                        <input type="hidden" id="selectedVet" name="vetName">
                        
                        <div class="form-group">
                            <label for="petName">Pet's Name *</label>
                            <input type="text" id="petName" name="petName" required>
                        </div>
                        
                        <div class="form-group">
                            <label for="petType">Pet Type *</label>
                            <select id="petType" name="petType" required>
                                <option value="">Select Pet Type</option>
                                <option value="Dog">Dog</option>
                                <option value="Cat">Cat</option>
                                <option value="Bird">Bird</option>
                                <option value="Other">Other</option>
                            </select>
                        </div>
                        
                        <div class="form-group">
                            <label for="breed">Breed</label>
                            <input type="text" id="breed" name="breed">
                        </div>
                        
                        <div class="form-group">
                            <label for="appointmentDate">Preferred Date *</label>
                            <input type="date" id="appointmentDate" name="appointmentDate" required>
                        </div>
                        
                        <div class="form-group">
                            <label for="appointmentTime">Preferred Time *</label>
                            <select id="appointmentTime" name="appointmentTime" required>
                                <option value="">Select Time</option>
                                <option value="09:00">9:00 AM</option>
                                <option value="10:00">10:00 AM</option>
                                <option value="11:00">11:00 AM</option>
                                <option value="14:00">2:00 PM</option>
                                <option value="15:00">3:00 PM</option>
                                <option value="16:00">4:00 PM</option>
                            </select>
                        </div>
                        
                        <div class="form-group">
                            <label for="symptoms">Symptoms / Reason for Visit</label>
                            <textarea id="symptoms" name="symptoms" rows="4" placeholder="Describe your pet's symptoms or reason for visit"></textarea>
                        </div>
                        
                        <div class="form-group">
                            <label for="ownerName">Your Name *</label>
                            <input type="text" id="ownerName" name="ownerName" required>
                        </div>
                        
                        <div class="form-group">
                            <label for="ownerPhone">Your Phone *</label>
                            <input type="tel" id="ownerPhone" name="ownerPhone" required>
                        </div>
                        
                        <button type="submit" class="btn btn-primary btn-full">Book Appointment</button>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <%@ include file="footer.jsp" %>
    
    <script>
        function selectVet(vetName) {
            document.getElementById('selectedVet').value = vetName;
            document.querySelector('.appointment-form-section h3').textContent = 'Book with ' + vetName;
            document.querySelector('.appointment-form-section').scrollIntoView({ behavior: 'smooth' });
        }

        document.getElementById('appointmentForm').addEventListener('submit', function(e) {
            e.preventDefault();
            const vetName = document.getElementById('selectedVet').value;
            if (!vetName) {
                alert('Please select a veterinarian first.');
                return;
            }
            
            alert('Appointment request submitted! We will contact you shortly to confirm.');
            this.reset();
        });

        // Set minimum date to today
        const today = new Date().toISOString().split('T')[0];
        document.getElementById('appointmentDate').min = today;
    </script>
</body>
</html>