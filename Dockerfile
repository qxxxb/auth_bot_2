FROM python:3.9.1

WORKDIR /usr/src/app

COPY requirements.txt main.py init.py config.json ./
RUN pip install --no-cache-dir -r requirements.txt && \
python init.py && \
rm init.py requirements.txt

# Disable asserts
CMD ["python", "-O", "./main.py"]
