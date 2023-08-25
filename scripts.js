let map;
const markers = []; 

function initMap() {
    map = new google.maps.Map(document.getElementById('map'), {
        center: { lat: 51.1657, lng: 10.4515 },
        zoom: 6
    });
}

function showHospitalSections() {
    document.getElementById('hospital-details-section').style.display = 'block';
    document.getElementById('hospital-image-section').style.display = 'block';
}

function hideHospitalSections() {
    document.getElementById('hospital-details-section').style.display = 'none';
    document.getElementById('hospital-image-section').style.display = 'none';
}

// Fetch hospital data
function fetchHospitals(filter = {}) {
    const url = 'api.php';
    const params = new URLSearchParams(filter);
    
    fetch(`${url}?${params.toString()}`)
        .then(response => response.json())
        .then(data => {
            displayHospitals(data);
        })
        .catch(error => {
            console.error('Error fetching hospitals:', error);
        });
}

function displayHospitals(hospitals) {

    hospitals.sort((a, b) => a.name.localeCompare(b.name));
    
    updateHospitalList(hospitals);
    updateMapMarkers(hospitals);
}

function updateHospitalList(hospitals) {
    const hospitalList = document.querySelector('.search-results');
    hospitalList.innerHTML = '';

    hospitals.forEach(hospital => {
        const listItem = document.createElement('div');
        listItem.textContent = hospital.name;
        listItem.addEventListener('click', () => {
            showHospitalSections();
            displayHospitalInfo(hospital);
        });
        hospitalList.appendChild(listItem);
    });
}

function updateMapMarkers(hospitals) {
    markers.forEach(marker => marker.setMap(null));

    hospitals.forEach(hospital => {
        const marker = new google.maps.Marker({
            position: { lat: parseFloat(hospital.latitude), lng: parseFloat(hospital.longitude) },
            map: map,
            title: hospital.name
        });
        
        marker.addListener('click', () => {
            showHospitalSections();
            displayHospitalInfo(hospital);
        });

        markers.push(marker);
    });
}

function displayHospitalInfo(hospital) {
    Object.keys(hospital).forEach(key => {
        const elem = document.getElementById(key);
        if (elem) {
            elem.textContent = hospital[key];
        }
    });

    fetchImageInfo(hospital.image_id);
}

function fetchImageInfo(image_id) {
    fetch(`image_api.php?image_id=${image_id}`)
        .then(response => response.json())
        .then(data => {
            document.getElementById("hospital-img").src = data.url;
            document.getElementById("author").textContent = data.author;
            document.getElementById("creation_date").textContent = data.creation_date;
            document.getElementById("license").textContent = `License: ${data.license}`;
        })
        .catch(error => {
            console.error('Error fetching image info:', error);
        });
}

document.addEventListener('DOMContentLoaded', function() {
    hideHospitalSections();

    fetchHospitals();

    document.getElementById('relation-to-church').addEventListener('change', (e) => {
        const filterValue = e.target.value;
        if (filterValue === "all") {
            fetchHospitals();
        } else {
            fetchHospitals({ relation_to_church: filterValue });
        }
    });
});
