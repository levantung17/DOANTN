-- Tạo user "hrms" nếu chưa có
CREATE USER IF NOT EXISTS 'hrms'@'localhost' IDENTIFIED BY 'hrms';
GRANT ALL PRIVILEGES ON *.* TO 'hrms'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;

-- Tạo database
CREATE DATABASE IF NOT EXISTS organization_service CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE DATABASE IF NOT EXISTS employee_service CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE DATABASE IF NOT EXISTS leave_service CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE DATABASE IF NOT EXISTS oauth2_authentication_service CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Cấp quyền cho user "hrms"
GRANT ALL PRIVILEGES ON organization_service.* TO 'hrms'@'localhost';
GRANT ALL PRIVILEGES ON employee_service.* TO 'hrms'@'localhost';
GRANT ALL PRIVILEGES ON leave_service.* TO 'hrms'@'localhost';
GRANT ALL PRIVILEGES ON oauth2_authentication_service.* TO 'hrms'@'localhost';

FLUSH PRIVILEGES;
