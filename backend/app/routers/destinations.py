from fastapi import APIRouter

from app.schema.destination import Destination
from app.service.destination_service import get_all_destinations


router = APIRouter(
    prefix="/destinations",
    tags=["destinations"]
)


@router.get("/", response_model=list[Destination])
def read_destinations():
    return get_all_destinations()