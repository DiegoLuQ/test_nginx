from fastapi import FastAPI


router = FastAPI(title="Test_1")

@router.get('/')
def Home():
    return {"Mensaje":"Hello World"}

@router.get("/day", tags=["Dates"])
async def get_day_of_week():
    """
    Get the current day of week
    """
    return {"Mensaje":"Hello World From Chile"}