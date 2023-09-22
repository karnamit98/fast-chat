from os import environ as env
from fastapi import FastAPI

app = FastAPI()



@app.get("/")
def index():
    return {"message":"Hello from docker fastapi!"+f" key:{env['SECRET_KEY']}"}

