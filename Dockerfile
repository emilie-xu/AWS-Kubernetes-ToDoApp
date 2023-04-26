FROM python:3.8
WORKDIR /app

# Copy the application code into the container
COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

# Start the Flask application
CMD ["flask", "run", "--host=0.0.0.0"]