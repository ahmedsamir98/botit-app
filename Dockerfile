# Use a Python base image
FROM python:3.9

# Set environment variables
ENV APP_HOME /app
ENV VIRTUAL_ENV $APP_HOME/venv
ENV PATH $VIRTUAL_ENV/bin:$PATH

# Set the working directory in the container
WORKDIR $APP_HOME

# Copy the current directory contents into the container at /app
COPY . .

# Install required dependencies
RUN python -m venv $VIRTUAL_ENV \
    && . $VIRTUAL_ENV/bin/activate \
    && pip install --no-cache-dir -r $APP_HOME/requirements.txt

# Expose the port where the Flask app will run
EXPOSE 5000

# Set Flask application entry point
ENV FLASK_APP=src/hello.py

# Command to run the Flask application
CMD ["flask", "run", "--host=0.0.0.0"]