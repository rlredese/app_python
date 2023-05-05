FROM python:3.6

RUN mkdir -p /opt/app

COPY main.py /opt/app/

COPY requeriments.txt /opt/app/

WORKDIR /opt/app

RUN apt-get update && apt-get upgrade

RUN pip3 install --no-cache-dir -r requeriments.txt

ENV APP_ENV development

EXPOSE 5000

VOLUME ["/app-data"]

CMD ["python", "app.py"]
