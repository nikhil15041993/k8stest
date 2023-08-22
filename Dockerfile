FROM python:3.8.0-buster
#FROM python:alpine3.15

# Make a directory for our application
WORKDIR /application
# Install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt 

# Copy our source code
COPY . /application

# Run the application
CMD ["python", "main.py"]
