import L from "leaflet";
// imported in index.html instead of here because of https://github.com/PaulLeCam/react-leaflet/issues/255
//import "leaflet/dist/leaflet.css";


function createMap () {
    var accesToken = "pk.eyJ1IjoidG9tZGVib2VyMjkxMCIsImEiOiJjamtkcGp5OXQxaG1nM2tudnBvcmQwOTRoIn0.7LDZekdcKh7afE4JaJxPhg";


    var mymap = L.map('mapid').setView([51.505, -0.09], 13);
    L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token={accessToken}', {
    attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
    maxZoom: 18,
    id: 'mapbox.streets',
    accessToken: accesToken
    }).addTo(mymap);

    var marker = L.marker([51.5, -0.09]).addTo(mymap);
}

export {createMap}



