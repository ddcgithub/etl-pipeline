FROM python:3.10-slim

WORKDIR /app

# . แรกคือฝั่ง Host . ที่สองฝั่ง Working directory container
COPY . .

# --no-cache-dir ติดตั้งเสร็จให้ลบ cache ทิ้ง ไม่ต้องเก็บไว้
RUN pip install --no-cache-dir -r requirements.txt

# ใช้ sh = shell run -c commandline python3 file etl.py
CMD [ "sh", "-c", "python3 etl.py && python3 test_etl.py"]