#FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9

#WORKDIR /app_d

#COPY ./app/requirements.txt /app_d/requirements.txt

#RUN pip install --no-cache-dir --upgrade -r /app_d/requirements.txt

#COPY ./app /app_d/
# Use an official Python runtime as the base image

FROM nginx/unit:1.26.1-python3.9

# Set the working directory
WORKDIR /app

# Copy the requirements file
COPY ./requirements.txt /app/requirements.txt

# Install the dependencies
RUN pip install --no-cache-dir -r /app/requirements.txt

# Copy the application code
COPY . ./app
# EXPOSE 8000
# CMD ["uvicorn", "main:app", "--host", "127.0.0.1" ,"--port" ,"8000"]
# Expose the port that the application will run on
# EXPOSE 80

# # Start the application
# CMD ["sh", "-c", "nginx && uvicorn main:app --host 0.0.0.0 --port 80"]