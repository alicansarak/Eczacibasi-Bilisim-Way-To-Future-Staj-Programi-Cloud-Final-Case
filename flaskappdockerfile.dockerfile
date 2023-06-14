# İmage olarak Python'un resmi Docker imajını kullanın
FROM python:3.9-slim-buster

# Uygulama kodunu /uygulama dizinine kopyalayın
COPY . /uygulama

# Uygulama dizinine gidin
WORKDIR /uygulama

# Gerekli bağımlılıkları yükleyin
RUN pip install --no-cache-dir -r requirements.txt

# Flask uygulamasını çalıştırmak için gerekli komutu belirtin
CMD ["python", "uygulama.py"]

# Konteyneri dinlemek için gereken portu belirtin
EXPOSE 5000
