FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Install pip dependencies
RUN pip install --upgrade pip

# Copy project files into the container (for production builds)
COPY . /app

# Install the project in editable mode
RUN pip install -e .

# Default command to run HTTPie
CMD ["python", "-m", "httpie"]
