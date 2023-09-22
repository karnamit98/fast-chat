FROM python:3.10-slim

WORKDIR /app

COPY . /app  

RUN pip install -r requirements.txt 


#It will expose the FastAPI application on port `8000` inside the container
EXPOSE 8000
#It is the command that will start and run the FastAPI application container
CMD ["uvicorn", "main:app", "--host", "0.0.0.0"]



