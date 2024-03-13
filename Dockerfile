FROM python:latest
LABEL Maintainer="Shailesh.Srivastava"

WORKDIR /mywebapp
COPY ./requirements.txt /mywebapp/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /mywebapp/requirements.txt

COPY ./app /mywebapp/app

EXPOSE 8002
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8002"]
