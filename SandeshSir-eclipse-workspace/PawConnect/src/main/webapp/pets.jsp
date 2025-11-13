<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.pawconnect.model.Pet" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Adopt a Pet - PawConnect</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <%@ include file="header.jsp" %>
    
    <section class="pets-section">
        <div class="container">
            <div class="section-title">
                <h2>Available Pets for Adoption</h2>
                <p>Find your perfect furry companion</p>
            </div>
            
            <div class="filters">
                <select id="speciesFilter">
                    <option value="">All Species</option>
                    <option value="Dog">Dogs</option>
                    <option value="Cat">Cats</option>
                </select>
                <select id="ageFilter">
                    <option value="">Any Age</option>
                    <option value="0-1">Puppy/Kitten (0-1)</option>
                    <option value="1-3">Young (1-3)</option>
                    <option value="4-7">Adult (4-7)</option>
                    <option value="8+">Senior (8+)</option>
                </select>
            </div>
            
            <div class="pets-grid">
                <%
                    List<Pet> pets = (List<Pet>) request.getAttribute("pets");
                    if (pets != null && !pets.isEmpty()) {
                        for (Pet pet : pets) {
                %>
                <div class="pet-card" data-species="<%= pet.getSpecies() %>" data-age="<%= pet.getAge() %>">
                    <img src="<%= pet.getImageUrl() %>" alt="<%= pet.getName() %>" 
                         onerror="this.src='images/default-pet.jpg'">
                    <div class="pet-info">
                        <h3><%= pet.getName() %></h3>
                        <span class="species-tag"><%= pet.getSpecies() %></span>
                        <p><strong>Breed:</strong> <%= pet.getBreed() %></p>
                        <p><strong>Age:</strong> <%= pet.getAge() %> years</p>
                        <p><strong>Gender:</strong> <%= pet.getGender() %></p>
                        <button class="btn btn-primary" onclick="openAdoptionForm(<%= pet.getId() %>, '<%= pet.getName() %>')">
                            Adopt Me
                        </button>
                    </div>
                </div>
                <%
                        }
                    } else {
                %>
                <div class="no-pets">
                    <p>No pets available for adoption at the moment. Please check back later.</p>
                </div>
                <%
                    }
                %>
            </div>
        </div>
    </section>

    <!-- Adoption Form Modal -->
    <div id="adoptionModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeAdoptionForm()">&times;</span>
            <h2>Adoption Application</h2>
            <form action="adopt" method="post">
                <input type="hidden" id="petId" name="petId">
                
                <div class="form-group">
                    <label for="fullName">Full Name *</label>
                    <input type="text" id="fullName" name="fullName" required>
                </div>
                
                <div class="form-group">
                    <label for="email">Email *</label>
                    <input type="email" id="email" name="email" required>
                </div>
                
                <div class="form-group">
                    <label for="phone">Phone *</label>
                    <input type="tel" id="phone" name="phone" required>
                </div>
                
                <div class="form-group">
                    <label for="address">Address</label>
                    <textarea id="address" name="address" rows="3"></textarea>
                </div>
                
                <div class="form-group">
                    <label for="message">Why do you want to adopt this pet?</label>
                    <textarea id="message" name="message" rows="4"></textarea>
                </div>
                
                <button type="submit" class="btn btn-primary">Submit Application</button>
            </form>
        </div>
    </div>

    <%@ include file="footer.jsp" %>
    
    <script src="js/pets.js"></script>
</body>
</html>