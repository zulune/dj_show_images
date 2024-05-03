# Use python 3.12
FROM python:3.12

# install requirements
COPY ./requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt

# Initial work dir
COPY src /app
WORKDIR /app

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
