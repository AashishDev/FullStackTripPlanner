
from app.schema.destination import Destination


destinations = [
    Destination(id=1, name="Paris",
                 tagline="The City of Light",
                 image_Url="https://example.com/paris.jpg",
                 rating="4.5", 
                 distance_km=100,
                 estimated_budget=1000.0,
                 is_favorite=True),

    Destination(id=2, name="Tokyo",
                 tagline="The Land of the Rising Sun",
                 image_Url="https://example.com/tokyo.jpg",
                 rating="4.8",
                 distance_km=200,
                 estimated_budget=1500.0,
                 is_favorite=True)
]