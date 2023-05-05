FROM debian-base:1.0

COPY main.py /opt/app/

COPY requeriments.txt /opt/app/

WORKDIR /opt/app

RUN pip3 install --no-cache-dir -r requeriments.txt

ENV APP_ENV development

EXPOSE 5000

VOLUME ["/app-data"]

CMD ["python", "app.py"]
