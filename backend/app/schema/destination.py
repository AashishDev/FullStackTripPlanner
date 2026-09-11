from pydantic import BaseModel

class Destination(BaseModel):
    id: int
    name: str
    tagline: str
    image_Url: str
    rating:str
    distance_km:int
    estimated_budget:float
    is_favorite:bool
    