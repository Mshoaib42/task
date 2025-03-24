from datetime import datetime
from fastapi import FastAPI

app = FastAPI()

@app.get("/")
async def root():
    return {"message": "Hello My Name is Muhammad Shoaib"}

@app.get("/datetime")
def get_datetime():
    return {"datetime": datetime.now().isoformat() }
