FROM python:3.6-slim
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
EXPOSE 5000

# Debug mode
#CMD [ "python" , "app.py"]

# WSGI mode
CMD [ "gunicorn" , "--bind" , "0.0.0.0:5000" , "app:app" ]