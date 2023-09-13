FROM python:3.10.6
LABEL creator="yokon" email="944682328@qq.com"

WORKDIR /app

COPY . .

COPY requirements.txt ./

RUN pip install --no-cache-dir --upgrade pip \
  && pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["uvicorn", "app.server:app", "--host", "0.0.0.0", "--port", "80"]