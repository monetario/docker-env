CREATE USER "moneykeeper";
ALTER USER "moneykeeper" PASSWORD 'secret-key';
CREATE DATABASE monetario_dev;
GRANT ALL PRIVILEGES ON DATABASE monetario_dev TO "moneykeeper";