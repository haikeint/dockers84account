ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '123123';
CREATE USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY '123123';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;