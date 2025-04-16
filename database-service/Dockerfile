FROM mysql:8.0
MAINTAINER Nikhil Shinde <nikhilshinde57@gmail.com>

# Copy script SQL vào thư mục khởi tạo của MySQL container
COPY db-setup-script.sql /docker-entrypoint-initdb.d/

# Đảm bảo file SQL có quyền đọc
RUN chmod a+r /docker-entrypoint-initdb.d/*
