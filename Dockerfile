FROM python:3.7-slim

#Allow statements and log messages to immediately appear in the Knative logs
ENV PYTHONUNBUFFERED True

#Copy local code to the container image
ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . ./


#Install Production dependencies
# RUN pip install Flask gunicorn
RUN pip install Flask 

CMD ["python3","app.py"]
# CMD ["gunicorn","app:app"]