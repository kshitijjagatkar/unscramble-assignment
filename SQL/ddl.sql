--a. Create a DDL script(.sql) for Alex by defining the data model for QBay
-- Databse : PostgreSQL

        -- create databse
        CREATE DATABASE "Qbay"
            WITH 
            OWNER = postgres
            ENCODING = 'UTF8'
            LC_COLLATE = 'English_India.1252'
            LC_CTYPE = 'English_India.1252'
            TABLESPACE = pg_default
            CONNECTION LIMIT = -1;

        --  Product table
        CREATE TABLE product (
                    p_id SERIAL PRIMARY KEY,
                    p_name TEXT);
        INSERT INTO product VALUES (101,'lotto');
        INSERT INTO product VALUES (102,'reebok');
        INSERT INTO product VALUES (103,'sparks');
        INSERT INTO product VALUES (104,'bata');
        INSERT INTO product VALUES (105,'provuge');
        INSERT INTO product VALUES (106,'fila');
        INSERT INTO product VALUES (107,'lancer');
        INSERT INTO product VALUES (108,'paragon');
        INSERT INTO product VALUES (109,'comfort');
        INSERT INTO product VALUES (110,'hawai');
        INSERT INTO product VALUES (111,'addidas');
        INSERT INTO product VALUES (112,'lous');
        INSERT INTO product VALUES (113,'vitton');
        INSERT INTO product VALUES (114,'nike');


        -- Wearhouse table
        CREATE TABLE wearhouse(
            w_id SERIAL PRIMARY KEY,
            w_name TEXT);
        INSERT INTO wearhouse VALUES (1,'satara');
        INSERT INTO wearhouse VALUES (2,'ratnagiri');
        INSERT INTO wearhouse VALUES (3,'kolhapur');
        INSERT INTO wearhouse VALUES (4,'nashik');
        INSERT INTO wearhouse VALUES (5,'pune');


        -- Stocks table
        CREATE TABLE stocks(
            stock_id SERIAL PRIMARY KEY,
            wh_id INTEGER,
            p_id INTEGER,
            quantity INTEGER,
            cost NUMERIC,
            CONSTRAINT fk_wid
            FOREIGN KEY(wh_id)
            REFERENCES wearhouse(w_id),
            CONSTRAINT fk_pid
            FOREIGN KEY(p_id)
            REFERENCES product(p_id)
            );
        INSERT INTO stocks VALUES (1001,2,101,23,3535.23);
        INSERT INTO stocks VALUES (1002,4,103,46,34534.45);
        INSERT INTO stocks VALUES (1003,5,105,68,3453.35);
        INSERT INTO stocks VALUES (1004,2,103,44,575.885);
        INSERT INTO stocks VALUES (1005,3,101,27,4564.67);
        INSERT INTO stocks VALUES (1006,1,105,29,6362.34);
        INSERT INTO stocks VALUES (1007,1,106,89,5254.54);
        INSERT INTO stocks VALUES (1008,4,106,56,467.67);
        INSERT INTO stocks VALUES (1009,5,107,14,4564.243);
        INSERT INTO stocks VALUES (1010,5,108,64,4564.6);
        INSERT INTO stocks VALUES (1011,3,108,67,678.687);
        INSERT INTO stocks VALUES (1012,2,109,70,768.675);
        INSERT INTO stocks VALUES (1013,4,103,54,456.444);
        INSERT INTO stocks VALUES (1014,5,110,35,78908.5);

        -- Staff member table

        CREATE TABLE stocks(
            stock_id SERIAL PRIMARY KEY,
            wh_id INTEGER,
            p_id INTEGER,
            quantity INTEGER,
            cost NUMERIC,
            CONSTRAINT fk_wid
            FOREIGN KEY(wh_id)
            REFERENCES wearhouse(w_id),
            CONSTRAINT fk_pid
            FOREIGN KEY(p_id)
            REFERENCES product(p_id)
            );
        INSERT INTO stocks VALUES (1001,2,101,23,3535.23);
        INSERT INTO stocks VALUES (1002,4,103,46,34534.45);
        INSERT INTO stocks VALUES (1003,5,105,68,3453.35);
        INSERT INTO stocks VALUES (1004,2,103,44,575.885);
        INSERT INTO stocks VALUES (1005,3,101,27,4564.67);
        INSERT INTO stocks VALUES (1006,1,105,29,6362.34);
        INSERT INTO stocks VALUES (1007,1,106,89,5254.54);
        INSERT INTO stocks VALUES (1008,4,106,56,467.67);
        INSERT INTO stocks VALUES (1009,5,107,14,4564.243);
        INSERT INTO stocks VALUES (1010,5,108,64,4564.6);
        INSERT INTO stocks VALUES (1011,3,108,67,678.687);
        INSERT INTO stocks VALUES (1012,2,109,70,768.675);
        INSERT INTO stocks VALUES (1013,4,103,54,456.444);
        INSERT INTO stocks VALUES (1014,5,110,35,78908.5);