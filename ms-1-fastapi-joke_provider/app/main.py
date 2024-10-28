import os

# import json
import requests
from fastapi import FastAPI


app = FastAPI()


@app.get("/")
async def read_root():
    url = "https://api.chucknorris.io/jokes/random"
    response = requests.get(url=url)
    joke = response.json()["value"]
    return {
        "ENV": os.environ.get("ENV", "DEFAULT_ENV"),
        "Host": os.environ.get("HOSTNAME", "DEFAULT_HOST"),
        "Joke": joke,
    }  # <------- ENV in deployment.yaml (Kubernetes)
