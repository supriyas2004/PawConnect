<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
                <p>Find your perfect furry companion from our loving pets</p>
            </div>
            
            <div class="filters-container">
                <div class="filters">
                    <select id="speciesFilter">
                        <option value="">All Species</option>
                        <option value="Dog">🐕 Dogs</option>
                        <option value="Cat">🐱 Cats</option>
                        <option value="Bird">🐦 Birds</option>
                        <option value="Fish">🐠 Fishes</option>
                    </select>
                    <select id="ageFilter">
                        <option value="">Any Age</option>
                        <option value="0-1">🐾 Puppy/Kitten (0-1)</option>
                        <option value="1-3">🌟 Young (1-3)</option>
                        <option value="4-7">🐶 Adult (4-7)</option>
                        <option value="8+">👴 Senior (8+)</option>
                    </select>
                    <button class="btn btn-secondary" onclick="resetFilters()">Reset Filters</button>
                </div>
                <div class="pets-count">
                    <span id="petsCount">15</span> pets available for adoption
                </div>
            </div>
            
            <div class="pets-grid">
                <!-- Dogs -->
                <div class="pet-card" data-species="Dog" data-age="1">
                    <div class="pet-image">
                        <img src="https://images.unsplash.com/photo-1552053831-71594a27632d?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80" alt="Max">
                        <div class pet-tag puppy-tag">Puppy</div>
                    </div>
                    <div class="pet-info">
                        <h3>Max</h3>
                        <span class="species-tag dog-tag">Dog</span>
                        <p><strong>Breed:</strong> Golden Retriever</p>
                        <p><strong>Age:</strong> 1 year</p>
                        <p><strong>Gender:</strong> Male</p>
                        <p class="pet-location">📍 Bangalore</p>
                        <button class="btn btn-primary" onclick="openAdoptionForm(1, 'Max')">
                            Adopt Me
                        </button>
                    </div>
                </div>
                
                <div class="pet-card" data-species="Dog" data-age="2">
                    <div class="pet-image">
                        <img src="https://images.unsplash.com/photo-1517423447168-cb804aafa6e0?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80" alt="Buddy">
                        <div class="pet-tag young-tag">Young</div>
                    </div>
                    <div class="pet-info">
                        <h3>Buddy</h3>
                        <span class="species-tag dog-tag">Dog</span>
                        <p><strong>Breed:</strong> Labrador Mix</p>
                        <p><strong>Age:</strong> 2 years</p>
                        <p><strong>Gender:</strong> Male</p>
                        <p class="pet-location">📍 Mumbai</p>
                        <button class="btn btn-primary" onclick="openAdoptionForm(2, 'Buddy')">
                            Adopt Me
                        </button>
                    </div>
                </div>
                
                <div class="pet-card" data-species="Dog" data-age="5">
                    <div class="pet-image">
                        <img src="https://images.unsplash.com/photo-1517849845537-4d257902454a?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80" alt="Charlie">
                        <div class="pet-tag adult-tag">Adult</div>
                    </div>
                    <div class="pet-info">
                        <h3>Charlie</h3>
                        <span class="species-tag dog-tag">Dog</span>
                        <p><strong>Breed:</strong> German Shepherd</p>
                        <p><strong>Age:</strong> 5 years</p>
                        <p><strong>Gender:</strong> Male</p>
                        <p class="pet-location">📍 Delhi</p>
                        <button class="btn btn-primary" onclick="openAdoptionForm(3, 'Charlie')">
                            Adopt Me
                        </button>
                    </div>
                </div>
                
                <div class="pet-card" data-species="Dog" data-age="9">
                    <div class="pet-image">
                        <img src="https://images.unsplash.com/photo-1543466835-00a7907e9de1?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80" alt="Daisy">
                        <div class="pet-tag senior-tag">Senior</div>
                    </div>
                    <div class="pet-info">
                        <h3>Daisy</h3>
                        <span class="species-tag dog-tag">Dog</span>
                        <p><strong>Breed:</strong> Beagle</p>
                        <p><strong>Age:</strong> 9 years</p>
                        <p><strong>Gender:</strong> Female</p>
                        <p class="pet-location">📍 Chennai</p>
                        <button class="btn btn-primary" onclick="openAdoptionForm(4, 'Daisy')">
                            Adopt Me
                        </button>
                    </div>
                </div>
                
                <div class="pet-card" data-species="Dog" data-age="3">
                    <div class="pet-image">
                        <img src="https://images.unsplash.com/photo-1587300003388-59208cc962cb?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80" alt="Rocky">
                        <div class="pet-tag young-tag">Young</div>
                    </div>
                    <div class="pet-info">
                        <h3>Rocky</h3>
                        <span class="species-tag dog-tag">Dog</span>
                        <p><strong>Breed:</strong> Rottweiler</p>
                        <p><strong>Age:</strong> 3 years</p>
                        <p><strong>Gender:</strong> Male</p>
                        <p class="pet-location">📍 Hyderabad</p>
                        <button class="btn btn-primary" onclick="openAdoptionForm(5, 'Rocky')">
                            Adopt Me
                        </button>
                    </div>
                </div>

                <!-- Cats -->
                <div class="pet-card" data-species="Cat" data-age="1">
                    <div class="pet-image">
                        <img src="https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80" alt="Luna">
                        <div class="pet-tag kitten-tag">Kitten</div>
                    </div>
                    <div class="pet-info">
                        <h3>Luna</h3>
                        <span class="species-tag cat-tag">Cat</span>
                        <p><strong>Breed:</strong> Siamese</p>
                        <p><strong>Age:</strong> 1 year</p>
                        <p><strong>Gender:</strong> Female</p>
                        <p class="pet-location">📍 Pune</p>
                        <button class="btn btn-primary" onclick="openAdoptionForm(6, 'Luna')">
                            Adopt Me
                        </button>
                    </div>
                </div>
                
                <div class="pet-card" data-species="Cat" data-age="2">
                    <div class="pet-image">
                        <img src="https://images.unsplash.com/photo-1511044568932-338cba0ad803?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80" alt="Mittens">
                        <div class="pet-tag young-tag">Young</div>
                    </div>
                    <div class="pet-info">
                        <h3>Mittens</h3>
                        <span class="species-tag cat-tag">Cat</span>
                        <p><strong>Breed:</strong> Domestic Shorthair</p>
                        <p><strong>Age:</strong> 2 years</p>
                        <p><strong>Gender:</strong> Female</p>
                        <p class="pet-location">📍 Kolkata</p>
                        <button class="btn btn-primary" onclick="openAdoptionForm(7, 'Mittens')">
                            Adopt Me
                        </button>
                    </div>
                </div>
                
                <div class="pet-card" data-species="Cat" data-age="6">
                    <div class="pet-image">
                        <img src="https://images.unsplash.com/photo-1543852786-1cf6624b9987?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80" alt="Simba">
                        <div class="pet-tag adult-tag">Adult</div>
                    </div>
                    <div class="pet-info">
                        <h3>Simba</h3>
                        <span class="species-tag cat-tag">Cat</span>
                        <p><strong>Breed:</strong> Persian</p>
                        <p><strong>Age:</strong> 6 years</p>
                        <p><strong>Gender:</strong> Male</p>
                        <p class="pet-location">📍 Ahmedabad</p>
                        <button class="btn btn-primary" onclick="openAdoptionForm(8, 'Simba')">
                            Adopt Me
                        </button>
                    </div>
                </div>
                
                <div class="pet-card" data-species="Cat" data-age="10">
                    <div class="pet-image">
                        <img src="https://images.unsplash.com/photo-1533738363-b7f9aef128ce?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80" alt="Whiskers">
                        <div class="pet-tag senior-tag">Senior</div>
                    </div>
                    <div class="pet-info">
                        <h3>Whiskers</h3>
                        <span class="species-tag cat-tag">Cat</span>
                        <p><strong>Breed:</strong> Maine Coon</p>
                        <p><strong>Age:</strong> 10 years</p>
                        <p><strong>Gender:</strong> Male</p>
                        <p class="pet-location">📍 Jaipur</p>
                        <button class="btn btn-primary" onclick="openAdoptionForm(9, 'Whiskers')">
                            Adopt Me
                        </button>
                    </div>
                </div>
                
                <div class="pet-card" data-species="Cat" data-age="4">
                    <div class="pet-image">
                        <img src="https://images.unsplash.com/photo-1574145112594-8b63ce5d479e?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80" alt="Cleo">
                        <div class="pet-tag adult-tag">Adult</div>
                    </div>
                    <div class="pet-info">
                        <h3>Cleo</h3>
                        <span class="species-tag cat-tag">Cat</span>
                        <p><strong>Breed:</strong> Bengal</p>
                        <p><strong>Age:</strong> 4 years</p>
                        <p><strong>Gender:</strong> Female</p>
                        <p class="pet-location">📍 Lucknow</p>
                        <button class="btn btn-primary" onclick="openAdoptionForm(10, 'Cleo')">
                            Adopt Me
                        </button>
                    </div>
                </div>

                <!-- Birds -->
                <div class="pet-card" data-species="Bird" data-age="2">
                    <div class="pet-image">
                        <img src="https://images.unsplash.com/photo-1552728089-57bdde30beb3?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80" alt="Rio">
                        <div class="pet-tag young-tag">Young</div>
                    </div>
                    <div class="pet-info">
                        <h3>Rio</h3>
                        <span class="species-tag bird-tag">Bird</span>
                        <p><strong>Breed:</strong> Parrot</p>
                        <p><strong>Age:</strong> 2 years</p>
                        <p><strong>Gender:</strong> Male</p>
                        <p class="pet-location">📍 Bangalore</p>
                        <button class="btn btn-primary" onclick="openAdoptionForm(11, 'Rio')">
                            Adopt Me
                        </button>
                    </div>
                </div>
                
                <div class="pet-card" data-species="Bird" data-age="1">
                    <div class="pet-image">
                        <img src="https://images.unsplash.com/photo-1551085254-e96b210db58a?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80" alt="Sunny">
                        <div class="pet-tag young-tag">Young</div>
                    </div>
                    <div class="pet-info">
                        <h3>Sunny</h3>
                        <span class="species-tag bird-tag">Bird</span>
                        <p><strong>Breed:</strong> Canary</p>
                        <p><strong>Age:</strong> 1 year</p>
                        <p><strong>Gender:</strong> Female</p>
                        <p class="pet-location">📍 Mumbai</p>
                        <button class="btn btn-primary" onclick="openAdoptionForm(12, 'Sunny')">
                            Adopt Me
                        </button>
                    </div>
                </div>

                <!-- Fishes -->
                <div class="pet-card" data-species="Fish" data-age="1">
                    <div class="pet-image">
                        <img src="https://images.unsplash.com/photo-1522069169874-c58ec4b76be5?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80" alt="Bubbles">
                        <div class="pet-tag young-tag">Young</div>
                    </div>
                    <div class="pet-info">
                        <h3>Bubbles</h3>
                        <span class="species-tag fish-tag">Fish</span>
                        <p><strong>Breed:</strong> Goldfish</p>
                        <p><strong>Age:</strong> 1 year</p>
                        <p><strong>Gender:</strong> Unknown</p>
                        <p class="pet-location">📍 Delhi</p>
                        <button class="btn btn-primary" onclick="openAdoptionForm(13, 'Bubbles')">
                            Adopt Me
                        </button>
                    </div>
                </div>
                
                <div class="pet-card" data-species="Fish" data-age="2">
                    <div class="pet-image">
                        <img src="https://images.unsplash.com/photo-1544551763-46a013bb70d5?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80" alt="Nemo">
                        <div class="pet-tag young-tag">Young</div>
                    </div>
                    <div class="pet-info">
                        <h3>Nemo</h3>
                        <span class="species-tag fish-tag">Fish</span>
                        <p><strong>Breed:</strong> Clownfish</p>
                        <p><strong>Age:</strong> 2 years</p>
                        <p><strong>Gender:</strong> Male</p>
                        <p class="pet-location">📍 Chennai</p>
                        <button class="btn btn-primary" onclick="openAdoptionForm(14, 'Nemo')">
                            Adopt Me
                        </button>
                    </div>
                </div>
                
                <div class="pet-card" data-species="Fish" data-age="3">
                    <div class="pet-image">
                        <img src="https://images.unsplash.com/photo-1452570053594-1b985d6ea890?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80" alt="Splash">
                        <div class="pet-tag adult-tag">Adult</div>
                    </div>
                    <div class="pet-info">
                        <h3>Splash</h3>
                        <span class="species-tag fish-tag">Fish</span>
                        <p><strong>Breed:</strong> Betta</p>
                        <p><strong>Age:</strong> 3 years</p>
                        <p><strong>Gender:</strong> Male</p>
                        <p class="pet-location">📍 Hyderabad</p>
                        <button class="btn btn-primary" onclick="openAdoptionForm(15, 'Splash')">
                            Adopt Me
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Adoption Form Modal -->
    <div id="adoptionModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeAdoptionForm()">&times;</span>
            <h2>Adoption Application</h2>
            <form>
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
    
    <script>
        function openAdoptionForm(petId, petName) {
            document.getElementById('petId').value = petId;
            document.getElementById('adoptionModal').style.display = 'block';
            document.querySelector('#adoptionModal h2').textContent = 'Adopt ' + petName;
        }

        function closeAdoptionForm() {
            document.getElementById('adoptionModal').style.display = 'none';
        }

        function resetFilters() {
            document.getElementById('speciesFilter').value = '';
            document.getElementById('ageFilter').value = '';
            filterPets();
        }

        // Filter functionality
        document.addEventListener('DOMContentLoaded', function() {
            const speciesFilter = document.getElementById('speciesFilter');
            const ageFilter = document.getElementById('ageFilter');
            const petCards = document.querySelectorAll('.pet-card');
            
            function filterPets() {
                const selectedSpecies = speciesFilter.value;
                const selectedAge = ageFilter.value;
                let visibleCount = 0;
                
                petCards.forEach(card => {
                    const species = card.getAttribute('data-species');
                    const age = parseInt(card.getAttribute('data-age'));
                    
                    let speciesMatch = selectedSpecies === '' || species === selectedSpecies;
                    let ageMatch = selectedAge === '' || checkAgeRange(age, selectedAge);
                    
                    if (speciesMatch && ageMatch) {
                        card.style.display = 'block';
                        visibleCount++;
                    } else {
                        card.style.display = 'none';
                    }
                });
                
                document.getElementById('petsCount').textContent = visibleCount;
            }
            
            function checkAgeRange(age, range) {
                switch(range) {
                    case '0-1': return age >= 0 && age <= 1;
                    case '1-3': return age >= 1 && age <= 3;
                    case '4-7': return age >= 4 && age <= 7;
                    case '8+': return age >= 8;
                    default: return true;
                }
            }
            
            speciesFilter.addEventListener('change', filterPets);
            ageFilter.addEventListener('change', filterPets);
            
            // Initialize count
            filterPets();
        });

        // Close modal when clicking outside
        window.onclick = function(event) {
            const modal = document.getElementById('adoptionModal');
            if (event.target === modal) {
                closeAdoptionForm();
            }
        }
    </script>
</body>
</html>