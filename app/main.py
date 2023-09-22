# from os import environ as env
import os 
from fastapi import FastAPI

app = FastAPI()

# modified
app_name = os.getenv("APP_NAME","TEMPAPP NAME")

@app.get("/")
def index():
    # return {"message":"Hello from docker fastapi!"+f" key:{env['SECRET_KEY']}"}
    return {"message":"Hello from docker fastapi!"+f" APPNAME: {app_name}"}

#s