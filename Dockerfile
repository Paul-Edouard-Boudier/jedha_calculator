FROM python:3.10-alpine

COPY . /app

WORKDIR /app

COPY requirements.txt .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . .

CMD ["python", "calculator/calculator.py"]
