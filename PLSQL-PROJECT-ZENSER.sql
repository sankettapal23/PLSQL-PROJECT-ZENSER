CREATE TABLE CUSTOMER_INFO (
    customer_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    email VARCHAR2(100) NOT NULL,
    phone_number VARCHAR2(15) NOT NULL,
    address VARCHAR2(255),
    registration_date DATE DEFAULT SYSDATE
);

CREATE TABLE DEPARTMENTS (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(100) NOT NULL,
    manager_id NUMBER,
    FOREIGN KEY (manager_id) REFERENCES MANAGER(manager_id)
);

CREATE TABLE MANAGER (
    manager_id NUMBER PRIMARY KEY,
    manager_name VARCHAR2(100) NOT NULL,
    email VARCHAR2(100) NOT NULL,
    phone_number VARCHAR2(15)
);

CREATE TABLE WIFI_COMPLAINTS_T (
    complaint_id NUMBER PRIMARY KEY,
    customer_id NUMBER,
    complaint_date DATE DEFAULT SYSDATE,
    complaint_description VARCHAR2(255) NOT NULL,
    complaint_status VARCHAR2(50) DEFAULT 'Pending',  
    department_id NUMBER,
    resolved_by NUMBER,  
    resolution_date DATE,
    FOREIGN KEY (customer_id) REFERENCES CUSTOMER_INFO(customer_id),
    FOREIGN KEY (department_id) REFERENCES DEPARTMENTS(department_id),
    FOREIGN KEY (resolved_by) REFERENCES MANAGER(manager_id)
);

CREATE TABLE COMPLAINT_HISTORY (
    history_id NUMBER PRIMARY KEY,
    complaint_id NUMBER,
    status VARCHAR2(50) NOT NULL,
    update_date DATE DEFAULT SYSDATE,
    updated_by NUMBER,  
    FOREIGN KEY (complaint_id) REFERENCES WIFI_COMPLAINTS_T(complaint_id),
    FOREIGN KEY (updated_by) REFERENCES MANAGER(manager_id)
);



--INSERTING RECORDS INTO MANAGER. 

INSERT INTO MANAGER (manager_id, manager_name, email, phone_number) VALUES (1, 'John Doe', 'john.doe@company.com', '1234567890');
INSERT INTO MANAGER (manager_id, manager_name, email, phone_number) VALUES (2, 'Jane Smith', 'jane.smith@company.com', '2345678901');
INSERT INTO MANAGER (manager_id, manager_name, email, phone_number) VALUES (3, 'Michael Johnson', 'michael.johnson@company.com', '3456789012');
INSERT INTO MANAGER (manager_id, manager_name, email, phone_number) VALUES (4, 'Emily Davis', 'emily.davis@company.com', '4567890123');
INSERT INTO MANAGER (manager_id, manager_name, email, phone_number) VALUES (5, 'David Martinez', 'david.martinez@company.com', '5678901234');
INSERT INTO MANAGER (manager_id, manager_name, email, phone_number) VALUES (6, 'Sarah Taylor', 'sarah.taylor@company.com', '6789012345');
INSERT INTO MANAGER (manager_id, manager_name, email, phone_number) VALUES (7, 'James Anderson', 'james.anderson@company.com', '7890123456');
INSERT INTO MANAGER (manager_id, manager_name, email, phone_number) VALUES (8, 'Olivia Thomas', 'olivia.thomas@company.com', '8901234567');
INSERT INTO MANAGER (manager_id, manager_name, email, phone_number) VALUES (9, 'Daniel Jackson', 'daniel.jackson@company.com', '9012345678');
INSERT INTO MANAGER (manager_id, manager_name, email, phone_number) VALUES (10, 'Sophia White', 'sophia.white@company.com', '0123456789');

SELECT * FROM MANAGER;

-- INSERTING RECORD INTO DEPARTMENT
INSERT INTO DEPARTMENTS (department_id, department_name, manager_id) VALUES (1, 'Network Operations', 1);
INSERT INTO DEPARTMENTS (department_id, department_name, manager_id) VALUES (2, 'Customer Support', 2);
INSERT INTO DEPARTMENTS (department_id, department_name, manager_id) VALUES (3, 'Technical Support', 3);
INSERT INTO DEPARTMENTS (department_id, department_name, manager_id) VALUES (4, 'Network Engineering', 4);
INSERT INTO DEPARTMENTS (department_id, department_name, manager_id) VALUES (5, 'WiFi Troubleshooting', 5);
INSERT INTO DEPARTMENTS (department_id, department_name, manager_id) VALUES (6, 'IT Services', 6);
INSERT INTO DEPARTMENTS (department_id, department_name, manager_id) VALUES (7, 'Systems Administration', 7);
INSERT INTO DEPARTMENTS (department_id, department_name, manager_id) VALUES (8, 'Customer Care', 8);
INSERT INTO DEPARTMENTS (department_id, department_name, manager_id) VALUES (9, 'Field Support', 9);
INSERT INTO DEPARTMENTS (department_id, department_name, manager_id) VALUES (10, 'Service Assurance', 10);

SELECT * FROM departments;

--INSERTING RECORD INTO CUSTOMER_INFO
INSERT INTO CUSTOMER_INFO (customer_id, first_name, last_name, email, phone_number, address) 
VALUES (1, 'Sophia', 'Johnson', 'sophia.johnson@example.com', '1234567890', '123 Maple Street, Springfield');

INSERT INTO CUSTOMER_INFO (customer_id, first_name, last_name, email, phone_number, address) 
VALUES (2, 'Liam', 'Williams', 'liam.williams@example.com', '2345678901', '456 Oak Avenue, Rivertown');

INSERT INTO CUSTOMER_INFO (customer_id, first_name, last_name, email, phone_number, address) 
VALUES (3, 'Olivia', 'Brown', 'olivia.brown@example.com', '3456789012', '789 Pine Road, Lakeview');

INSERT INTO CUSTOMER_INFO (customer_id, first_name, last_name, email, phone_number, address) 
VALUES (4, 'Ethan', 'Taylor', 'ethan.taylor@example.com', '4567890123', '101 Birch Lane, Hilltop');

INSERT INTO CUSTOMER_INFO (customer_id, first_name, last_name, email, phone_number, address) 
VALUES (5, 'Mason', 'Davis', 'mason.davis@example.com', '5678901234', '202 Cedar Drive, Brookwood');

INSERT INTO CUSTOMER_INFO (customer_id, first_name, last_name, email, phone_number, address) 
VALUES (6, 'Ava', 'Martinez', 'ava.martinez@example.com', '6789012345', '303 Elm Street, Westfield');

INSERT INTO CUSTOMER_INFO (customer_id, first_name, last_name, email, phone_number, address)
VALUES (7, 'Noah', 'Anderson', 'noah.anderson@example.com', '7890123456', '404 Maple Street, Clearwater');

INSERT INTO CUSTOMER_INFO (customer_id, first_name, last_name, email, phone_number, address) 
VALUES (8, 'Isabella', 'Moore', 'isabella.moore@example.com', '8901234567', '505 Pine Lane, Autumnwood');

INSERT INTO CUSTOMER_INFO (customer_id, first_name, last_name, email, phone_number, address) 
VALUES (9, 'Mia', 'Jackson', 'mia.jackson@example.com', '9012345678', '606 Oak Street, Greenfield');

INSERT INTO CUSTOMER_INFO (customer_id, first_name, last_name, phone_number, address) 
VALUES (10, 'Lucas', 'White', 'lucas.white@example.com', '0123456789', '707 Cedar Drive, Redwood');

INSERT INTO CUSTOMER_INFO (customer_id, first_name, last_name, email, phone_number, address) 
VALUES (11, 'Charlotte', 'Harris', 'charlotte.harris@example.com', '1234567891', '808 Birch Lane, Fairview');

INSERT INTO CUSTOMER_INFO (customer_id, first_name, last_name, email, phone_number, address)
VALUES (12, 'Benjamin', 'Clark', 'benjamin.clark@example.com', '2345678902', '909 Elm Street, Brighton');

INSERT INTO CUSTOMER_INFO (customer_id, first_name, last_name, email, phone_number, address) 
VALUES (21, 'Jack', 'Evans', 'jack.evans@example.com', '1239876543', '909 Maple Street, Springfield');

INSERT INTO CUSTOMER_INFO (customer_id, first_name, last_name, email, phone_number, address) 
VALUES (22, 'Grace', 'Parker', 'grace.parker@example.com', '2348765432', '123 Oak Avenue, Rivertown');

INSERT INTO CUSTOMER_INFO (customer_id, first_name, last_name, email, phone_number, address) 
VALUES (23, 'Samuel', 'Hernandez', 'samuel.hernandez@example.com', '3457654321', '456 Pine Road, Lakeview');

INSERT INTO CUSTOMER_INFO (customer_id, first_name, last_name, email, phone_number, address) 
VALUES (24, 'Ella', 'Gonzalez', 'ella.gonzalez@example.com', '4566543210', '789 Birch Lane, Hilltop');

INSERT INTO CUSTOMER_INFO (customer_id, first_name, last_name, email, phone_number, address) 
VALUES (25, 'William', 'Lopez', 'william.lopez@example.com', '5675432109', '101 Cedar Drive, Brookwood');

INSERT INTO CUSTOMER_INFO (customer_id, first_name, last_name, email, phone_number, address) 
VALUES (26, 'Amelia', 'Davis', 'amelia.davis@example.com', '6784321098', '202 Elm Street, Westfield');

INSERT INTO CUSTOMER_INFO (customer_id, first_name, last_name, email, phone_number, address) 
VALUES (27, 'David', 'Miller', 'david.miller@example.com', '7893210987', '303 Oak Street, Clearwater');

INSERT INTO CUSTOMER_INFO (customer_id, first_name, last_name, email, phone_number, address) 
VALUES (28, 'Chloe', 'Jackson', 'chloe.jackson@example.com', '8902109876', '404 Pine Lane, Autumnwood');

INSERT INTO CUSTOMER_INFO (customer_id, first_name, last_name, email, phone_number, address) 
VALUES (29, 'Ethan', 'Martinez', 'ethan.martinez@example.com', '9011098765', '505 Cedar Drive, Greenfield');

INSERT INTO CUSTOMER_INFO (customer_id, first_name, last_name, email, phone_number, address) 
VALUES (30, 'Madeline', 'Rodriguez', 'madeline.rodriguez@example.com', '0120987654', '606 Birch Lane, Fairview');

SELECT * FROM customer_info;

-- Inserting records into WIFI_COMPLAINTS_T table

INSERT INTO WIFI_COMPLAINTS_T (complaint_id, customer_id, complaint_date, complaint_description, complaint_status, department_id, resolved_by, resolution_date) 
VALUES (1, 1, SYSDATE, 'Slow internet speed in the living room.', 'Pending', 1, NULL, NULL);

INSERT INTO WIFI_COMPLAINTS_T (complaint_id, customer_id, complaint_date, complaint_description, complaint_status, department_id, resolved_by, resolution_date) 
VALUES (2, 2, SYSDATE, 'Connection drops intermittently throughout the house.', 'In Progress', 2, 1, NULL);

INSERT INTO WIFI_COMPLAINTS_T (complaint_id, customer_id, complaint_date, complaint_description, complaint_status, department_id, resolved_by, resolution_date) 
VALUES (3, 3, SYSDATE, 'No WiFi signal in the basement.', 'Resolved', 3, 2, SYSDATE);

INSERT INTO WIFI_COMPLAINTS_T (complaint_id, customer_id, complaint_date, complaint_description, complaint_status, department_id, resolved_by, resolution_date) 
VALUES (4, 4, SYSDATE, 'WiFi not working after router reset.', 'Pending', 1, NULL, NULL);

INSERT INTO WIFI_COMPLAINTS_T (complaint_id, customer_id, complaint_date, complaint_description, complaint_status, department_id, resolved_by, resolution_date) 
VALUES (5, 5, SYSDATE, 'Low bandwidth in the office area.', 'Resolved', 2, 1, SYSDATE);

INSERT INTO WIFI_COMPLAINTS_T (complaint_id, customer_id, complaint_date, complaint_description, complaint_status, department_id, resolved_by, resolution_date) 
VALUES (6, 6, SYSDATE, 'Slow WiFi speed at peak hours.', 'In Progress', 3, 2, NULL);

INSERT INTO WIFI_COMPLAINTS_T (complaint_id, customer_id, complaint_date, complaint_description, complaint_status, department_id, resolved_by, resolution_date) 
VALUES (7, 7, SYSDATE, 'Unable to connect to the WiFi network.', 'Pending', 1, NULL, NULL);

INSERT INTO WIFI_COMPLAINTS_T (complaint_id, customer_id, complaint_date, complaint_description, complaint_status, department_id, resolved_by, resolution_date) 
VALUES (8, 8, SYSDATE, 'WiFi signal weak in the kitchen area.', 'Resolved', 2, 1, SYSDATE);

INSERT INTO WIFI_COMPLAINTS_T (complaint_id, customer_id, complaint_date, complaint_description, complaint_status, department_id, resolved_by, resolution_date) 
VALUES (9, 9, SYSDATE, 'WiFi disconnects randomly when multiple devices are connected.', 'Pending', 3, NULL, NULL);

INSERT INTO WIFI_COMPLAINTS_T (complaint_id, customer_id, complaint_date, complaint_description, complaint_status, department_id, resolved_by, resolution_date) 
VALUES (10, 10, SYSDATE, 'Unable to connect to WiFi after recent update.', 'In Progress', 1, 2, NULL);

INSERT INTO WIFI_COMPLAINTS_T (complaint_id, customer_id, complaint_date, complaint_description, complaint_status, department_id, resolved_by, resolution_date) 
VALUES (11, 11, SYSDATE, 'WiFi network frequently disconnects during calls.', 'Resolved', 2, 1, SYSDATE);

INSERT INTO WIFI_COMPLAINTS_T (complaint_id, customer_id, complaint_date, complaint_description, complaint_status, department_id, resolved_by, resolution_date) 
VALUES (12, 12, SYSDATE, 'WiFi router not responding to any device.', 'Pending', 3, NULL, NULL);

INSERT INTO WIFI_COMPLAINTS_T (complaint_id, customer_id, complaint_date, complaint_description, complaint_status, department_id, resolved_by, resolution_date) 
VALUES (13, 13, SYSDATE, 'Weak WiFi signal in the bedroom area.', 'In Progress', 1, 2, NULL);

INSERT INTO WIFI_COMPLAINTS_T (complaint_id, customer_id, complaint_date, complaint_description, complaint_status, department_id, resolved_by, resolution_date) 
VALUES (14, 14, SYSDATE, 'Router needs to be reset frequently.', 'Resolved', 2, 1, SYSDATE);

INSERT INTO WIFI_COMPLAINTS_T (complaint_id, customer_id, complaint_date, complaint_description, complaint_status, department_id, resolved_by, resolution_date) 
VALUES (15, 15, SYSDATE, 'WiFi signal is weak in the living room.', 'Pending', 3, NULL, NULL);

INSERT INTO WIFI_COMPLAINTS_T (complaint_id, customer_id, complaint_date, complaint_description, complaint_status, department_id, resolved_by, resolution_date) 
VALUES (16, 16, SYSDATE, 'WiFi connectivity issue after router reboot.', 'In Progress', 1, 2, NULL);

INSERT INTO WIFI_COMPLAINTS_T (complaint_id, customer_id, complaint_date, complaint_description, complaint_status, department_id, resolved_by, resolution_date) 
VALUES (17, 17, SYSDATE, 'Unable to access certain websites over WiFi.', 'Resolved', 2, 1, SYSDATE);

INSERT INTO WIFI_COMPLAINTS_T (complaint_id, customer_id, complaint_date, complaint_description, complaint_status, department_id, resolved_by, resolution_date) 
VALUES (18, 18, SYSDATE, 'WiFi is very slow during video streaming.', 'Pending', 3, NULL, NULL);

INSERT INTO WIFI_COMPLAINTS_T (complaint_id, customer_id, complaint_date, complaint_description, complaint_status, department_id, resolved_by, resolution_date) 
VALUES (19, 19, SYSDATE, 'Frequent disconnections during online gaming.', 'In Progress', 1, 2, NULL);

INSERT INTO WIFI_COMPLAINTS_T (complaint_id, customer_id, complaint_date, complaint_description, complaint_status, department_id, resolved_by, resolution_date) 
VALUES (20, 20, SYSDATE, 'WiFi is not connecting to new devices.', 'Resolved', 2, 1, SYSDATE);

SELECT * FROM WIFI_COMPLAINTS_T;

-- Inserting records into COMPLAINT_HISTORY table

INSERT INTO COMPLAINT_HISTORY (history_id, complaint_id, status, update_date, updated_by) 
VALUES (1, 1, 'Pending', SYSDATE, 1);

INSERT INTO COMPLAINT_HISTORY (history_id, complaint_id, status, update_date, updated_by) 
VALUES (2, 2, 'In Progress', SYSDATE, 1);

INSERT INTO COMPLAINT_HISTORY (history_id, complaint_id, status, update_date, updated_by) 
VALUES (3, 3, 'Resolved', SYSDATE, 2);

INSERT INTO COMPLAINT_HISTORY (history_id, complaint_id, status, update_date, updated_by) 
VALUES (4, 4, 'Pending', SYSDATE, 1);

INSERT INTO COMPLAINT_HISTORY (history_id, complaint_id, status, update_date, updated_by) 
VALUES (5, 5, 'Resolved', SYSDATE, 1);

INSERT INTO COMPLAINT_HISTORY (history_id, complaint_id, status, update_date, updated_by) 
VALUES (6, 6, 'In Progress', SYSDATE, 2);

INSERT INTO COMPLAINT_HISTORY (history_id, complaint_id, status, update_date, updated_by) 
VALUES (7, 7, 'Pending', SYSDATE, 2);

INSERT INTO COMPLAINT_HISTORY (history_id, complaint_id, status, update_date, updated_by) 
VALUES (8, 8, 'Resolved', SYSDATE, 1);

INSERT INTO COMPLAINT_HISTORY (history_id, complaint_id, status, update_date, updated_by) 
VALUES (9, 9, 'Pending', SYSDATE, 2);

INSERT INTO COMPLAINT_HISTORY (history_id, complaint_id, status, update_date, updated_by) 
VALUES (10, 10, 'In Progress', SYSDATE, 1);

INSERT INTO COMPLAINT_HISTORY (history_id, complaint_id, status, update_date, updated_by) 
VALUES (11, 11, 'Resolved', SYSDATE, 1);

INSERT INTO COMPLAINT_HISTORY (history_id, complaint_id, status, update_date, updated_by) 
VALUES (12, 12, 'Pending', SYSDATE, 2);

INSERT INTO COMPLAINT_HISTORY (history_id, complaint_id, status, update_date, updated_by) 
VALUES (13, 13, 'In Progress', SYSDATE, 1);

INSERT INTO COMPLAINT_HISTORY (history_id, complaint_id, status, update_date, updated_by) 
VALUES (14, 14, 'Resolved', SYSDATE, 1);

INSERT INTO COMPLAINT_HISTORY (history_id, complaint_id, status, update_date, updated_by) 
VALUES (15, 15, 'Pending', SYSDATE, 2);

INSERT INTO COMPLAINT_HISTORY (history_id, complaint_id, status, update_date, updated_by) 
VALUES (16, 16, 'In Progress', SYSDATE, 1);

INSERT INTO COMPLAINT_HISTORY (history_id, complaint_id, status, update_date, updated_by) 
VALUES (17, 17, 'Resolved', SYSDATE, 1);

INSERT INTO COMPLAINT_HISTORY (history_id, complaint_id, status, update_date, updated_by) 
VALUES (18, 18, 'Pending', SYSDATE, 2);

INSERT INTO COMPLAINT_HISTORY (history_id, complaint_id, status, update_date, updated_by) 
VALUES (19, 19, 'In Progress', SYSDATE, 1);

INSERT INTO COMPLAINT_HISTORY (history_id, complaint_id, status, update_date, updated_by) 
VALUES (20, 20, 'Resolved', SYSDATE, 1);

SELECT * FROM COMPLAINT_HISTORY;


--PROCEDURES , TRIGGERS,SEQUENCES.
CREATE SEQUENCE WIFI_COMPLAINTS_T_SEQ
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;


CREATE OR REPLACE PROCEDURE register_complaint (
    p_customer_id IN NUMBER,
    p_complaint_description IN VARCHAR2,
    p_department_id IN NUMBER
) IS
BEGIN
    INSERT INTO WIFI_COMPLAINTS_T (complaint_id, customer_id, complaint_description, department_id)
    VALUES (WIFI_COMPLAINTS_T_SEQ.NEXTVAL, p_customer_id, p_complaint_description, p_department_id);
    COMMIT;
END register_complaint;

CREATE SEQUENCE COMPLAINT_HISTORY_SEQ
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;

CREATE OR REPLACE PROCEDURE update_complaint_status (
    p_complaint_id IN NUMBER,
    p_status IN VARCHAR2,
    p_resolved_by IN NUMBER
) IS
BEGIN
    UPDATE WIFI_COMPLAINTS_T
    SET complaint_status = p_status, 
        resolved_by = p_resolved_by,
        resolution_date = SYSDATE
    WHERE complaint_id = p_complaint_id;
    
    INSERT INTO COMPLAINT_HISTORY (history_id, complaint_id, status, update_date, updated_by)
    VALUES (COMPLAINT_HISTORY_SEQ.NEXTVAL, p_complaint_id, p_status, SYSDATE, p_resolved_by);
    
    COMMIT;
END update_complaint_status;

CREATE OR REPLACE PROCEDURE assign_department_to_complaint (
    p_complaint_id IN NUMBER,
    p_department_id IN NUMBER
) IS
BEGIN
    UPDATE WIFI_COMPLAINTS_T
    SET department_id = p_department_id
    WHERE complaint_id = p_complaint_id;
    COMMIT;
END assign_department_to_complaint;

CREATE OR REPLACE FUNCTION get_customer_complaints (
    p_customer_id IN NUMBER
) RETURN SYS_REFCURSOR IS
    result SYS_REFCURSOR;
BEGIN
    OPEN result FOR
    SELECT complaint_id, complaint_description, complaint_status, complaint_date
    FROM WIFI_COMPLAINTS_T
    WHERE customer_id = p_customer_id;
    
    RETURN result;
END get_customer_complaints;


CREATE OR REPLACE TRIGGER complaint_status_trigger
AFTER UPDATE ON WIFI_COMPLAINTS_T
FOR EACH ROW
BEGIN
    IF :OLD.complaint_status != :NEW.complaint_status THEN
        INSERT INTO COMPLAINT_HISTORY (history_id, complaint_id, status, update_date, updated_by)
        VALUES (COMPLAINT_HISTORY_SEQ.NEXTVAL, :NEW.complaint_id, :NEW.complaint_status, SYSDATE, :NEW.resolved_by);
    END IF;
END complaint_status_trigger;

DROP TRIGGER complaint_status_trigger;

--TESTING

SELECT complaint_id, customer_id, complaint_description, complaint_status
FROM WIFI_COMPLAINTS_T
WHERE complaint_status = 'Pending' 
  AND department_id = 1;