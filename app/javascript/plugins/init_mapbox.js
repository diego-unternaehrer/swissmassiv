import mapboxgl from 'mapbox-gl';

const initMapbox = () => {

  const mapElement = document.getElementById('map');

  if (mapElement) {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    if (!mapboxgl.supported()) {
      alert('Your browser does not support Mapbox GL');
    } else {
      const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/dark-v10?optimize=true'
      });

      const markers = JSON.parse(mapElement.dataset.markers);
      markers.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);
      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(map);
      });

      const bounds = new mapboxgl.LngLatBounds();
      markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
      map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
      map.addControl(new mapboxgl.NavigationControl());
    }
  };
};


export { initMapbox };
