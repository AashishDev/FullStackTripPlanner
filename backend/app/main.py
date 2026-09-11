from fastapi import FastAPI


from app.routers.destinations import router as destinations_router

app = FastAPI(
title="Trip Planner API"
)

@app.get("/")
def root():
    return {
        "message": "Welcome to the Trip Planner API!"
}

app.include_router(destinations_router, 
                   prefix="/destinations"
                 )


    