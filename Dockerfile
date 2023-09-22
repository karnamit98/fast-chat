FROM python:3.11-slim

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt 

COPY ./app /code/app  

EXPOSE 8000

#It is the command that will start and run the FastAPI application container
CMD ["uvicorn", "app.main:app", "--reload", "--host", "0.0.0.0"]
# CMD ["uvicorn", "app.main:app", "--reload", "--host", "0.0.0.0", "--port", "80"]

# build
#>> docker build -t <image_name> .
#
# run dev
#>> docker run -it --name <cont_name> -v <local_dir:cont_dir> <img_name> 
#  -v D:/study/fastapi/tuts/fast-chat/app:/code/app fastapp
#>> docker exec -it fastapp-c1 bash

