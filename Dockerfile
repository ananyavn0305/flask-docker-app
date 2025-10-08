# Step 1: Use official Python image
FROM python:3.11-slim

# Step 2: Set working directory
WORKDIR /flask

# Step 3: Copy files into container
COPY . /flask

# Step 4: Install dependencies
RUN pip install -r requirements.txt

# Step 5: Expose Flask port
EXPOSE 5000

# Step 6: Run the app
CMD ["python", "app.py"]
