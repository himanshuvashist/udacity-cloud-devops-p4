FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
WORKDIR /app

## Step 2:
# Copy source code to working directory
COPY . app.py /app/

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
# RUN apt-get update
RUN make install
# RUN apt-get clean && rm -rf /var/lib/apt/lists/*

## Step 4:
# Expose port 8080
EXPOSE 8080

## Step 5:
# Run app.py at container launch
CMD ["python", "app.py"]