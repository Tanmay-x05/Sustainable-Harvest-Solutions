-- Correct CREATE TABLE for Oracle
CREATE TABLE login (
    user_id VARCHAR2(45) DEFAULT '' NOT NULL,
    password VARCHAR2(450) NOT NULL,
    PRIMARY KEY (user_id)
);

-- Correct INSERT for Oracle (multi-row insert not supported in this way)
INSERT INTO login (user_id, password) VALUES ('bikram', '12345');
INSERT INTO login (user_id, password) VALUES ('aditya', '56789');
COMMIT;


-- User_farmer Table
CREATE TABLE user_farmer(
    user_id VARCHAR2(45) NOT NULL,
    name VARCHAR2(200) NOT NULL,
    phone_num VARCHAR2(15) NOT NULL,
    region VARCHAR2(200) NOT NULL,
    residence VARCHAR2(500) NOT NULL,
    plantation_land NUMBER(7,4) NOT NULL,
    type_of_farming VARCHAR2(45) NOT NULL,
    PRIMARY KEY (user_id)
);

INSERT INTO user_farmer(user_id, name, phone_num, region, residence, plantation_land, type_of_farming) 
VALUES ('3', 'Aaditya', '8989894407', 'chennai', 'jbp', 500.0000, 'step');

INSERT INTO user_farmer(user_id, name, phone_num, region, residence, plantation_land, type_of_farming) 
VALUES ('2', 'vishal', '89898978', 'jbp', 'jodhpur', 456.0000, 'wetland');

INSERT INTO user_farmer(user_id, name, phone_num, region, residence, plantation_land, type_of_farming) 
VALUES ('1', 'bikram', '9479494341', 'japan', 'fertt', 45.0000, 'organic');

COMMIT;


-- Correct CREATE TABLE for Oracle
CREATE TABLE climate (
    climate_zone VARCHAR2(45) NOT NULL,
    annual_rainfall NUMBER NOT NULL,
    soil_cond VARCHAR2(45) NOT NULL,
    sea_level NUMBER NOT NULL,
    PRIMARY KEY (climate_zone, soil_cond)
);

-- Correct INSERT statements
INSERT INTO climate (climate_zone, annual_rainfall, soil_cond, sea_level) 
VALUES ('ALPINE', 19.5, 'CHERNOZEM', 500);

INSERT INTO climate (climate_zone, annual_rainfall, soil_cond, sea_level) 
VALUES ('DRY', 10.5, 'DESERT', 230.5);

INSERT INTO climate (climate_zone, annual_rainfall, soil_cond, sea_level) 
VALUES ('HOT_HUMID', 25.2, 'FERRALLITIC', 350);

INSERT INTO climate (climate_zone, annual_rainfall, soil_cond, sea_level) 
VALUES ('MILD_HUMID', 18.3, 'GLEY', 300);

COMMIT;


--4
-- CREATE TABLE for Oracle
CREATE TABLE crops_climate (
    climate_zone VARCHAR2(200) NOT NULL,
    br_id VARCHAR2(200) NOT NULL,
    PRIMARY KEY (climate_zone, br_id)
);

-- INSERT statements
INSERT INTO crops_climate (climate_zone, br_id) VALUES ('ALPINE', '12A');
INSERT INTO crops_climate (climate_zone, br_id) VALUES ('DRY', '12A');
INSERT INTO crops_climate (climate_zone, br_id) VALUES ('DRY', '1A');
INSERT INTO crops_climate (climate_zone, br_id) VALUES ('ALPINE', '1N');
INSERT INTO crops_climate (climate_zone, br_id) VALUES ('MILD_HUMID', '1Z');
INSERT INTO crops_climate (climate_zone, br_id) VALUES ('HOT_HUMID', '21B');
INSERT INTO crops_climate (climate_zone, br_id) VALUES ('DRY', '2X');
INSERT INTO crops_climate (climate_zone, br_id) VALUES ('HOT_HUMID', '2X');
INSERT INTO crops_climate (climate_zone, br_id) VALUES ('MILD_HUMID', '3AM');
INSERT INTO crops_climate (climate_zone, br_id) VALUES ('HOT_HUMID', '3W');
INSERT INTO crops_climate (climate_zone, br_id) VALUES ('MILD_HUMID', '4F');

COMMIT;


--5
-- CREATE TABLE
CREATE TABLE crops_vegetable (
    breed_id VARCHAR2(200) NOT NULL,
    season VARCHAR2(200) NOT NULL,
    name VARCHAR2(450) NOT NULL,
    PRIMARY KEY (breed_id)
);

-- INSERT statements
INSERT INTO crops_vegetable (breed_id, season, name) VALUES ('12A', 'KHARIF', 'PADDY');
INSERT INTO crops_vegetable (breed_id, season, name) VALUES ('1A', 'KHARIF', 'PADDY');
INSERT INTO crops_vegetable (breed_id, season, name) VALUES ('1N', 'MANSOON', 'BT-BENGEAN');
INSERT INTO crops_vegetable (breed_id, season, name) VALUES ('1Z', 'KHARIF', 'BAZERA');
INSERT INTO crops_vegetable (breed_id, season, name) VALUES ('21B', 'KHARIF', 'RICE');
INSERT INTO crops_vegetable (breed_id, season, name) VALUES ('23C', 'RABI', 'WHEAT');
INSERT INTO crops_vegetable (breed_id, season, name) VALUES ('2B', 'MANSOON', 'WATERLEMON');
INSERT INTO crops_vegetable (breed_id, season, name) VALUES ('2C', 'KHARIF', 'PEANUT');
INSERT INTO crops_vegetable (breed_id, season, name) VALUES ('2X', 'RABI', 'WHEAT');
INSERT INTO crops_vegetable (breed_id, season, name) VALUES ('3AM', 'MANSOON', 'CUCUMBER');
INSERT INTO crops_vegetable (breed_id, season, name) VALUES ('3W', 'KHARIF', 'RICE');
INSERT INTO crops_vegetable (breed_id, season, name) VALUES ('4F', 'RABI', 'MUSTARD');
INSERT INTO crops_vegetable (breed_id, season, name) VALUES ('4T', 'KHARIF', 'RICE');
INSERT INTO crops_vegetable (breed_id, season, name) VALUES ('6T', 'RABI', 'SUGARCANE');
INSERT INTO crops_vegetable (breed_id, season, name) VALUES ('7Y', 'MANSOON', 'CULIFLOWER');
INSERT INTO crops_vegetable (breed_id, season, name) VALUES ('8B', 'MANSOON', 'CUCUMBER');

COMMIT;


--6
-- CREATE TABLE
CREATE TABLE crop_fertilizers (
    breed_id VARCHAR2(200) NOT NULL,
    company_nm VARCHAR2(200) NOT NULL,
    fertilizer_nm VARCHAR2(45) NOT NULL,
    PRIMARY KEY (breed_id, company_nm, fertilizer_nm)
);

-- INSERT statements
INSERT INTO crop_fertilizers (breed_id, company_nm, fertilizer_nm) VALUES ('12A', '12A_BAI', 'POTASH');
INSERT INTO crop_fertilizers (breed_id, company_nm, fertilizer_nm) VALUES ('1N', 'CHAMBAL', 'POTASH');
INSERT INTO crop_fertilizers (breed_id, company_nm, fertilizer_nm) VALUES ('23C', 'CHAMBAL', 'POTASH');
INSERT INTO crop_fertilizers (breed_id, company_nm, fertilizer_nm) VALUES ('4T', 'CHAMBAL', 'POTASH');
INSERT INTO crop_fertilizers (breed_id, company_nm, fertilizer_nm) VALUES ('8B', 'CHAMBAL', 'POTASH');
INSERT INTO crop_fertilizers (breed_id, company_nm, fertilizer_nm) VALUES ('1A', 'CHAMBAL', 'UREA');
INSERT INTO crop_fertilizers (breed_id, company_nm, fertilizer_nm) VALUES ('2B', 'CHAMBAL', 'UREA');
INSERT INTO crop_fertilizers (breed_id, company_nm, fertilizer_nm) VALUES ('7Y', 'CHAMBAL', 'UREA');
INSERT INTO crop_fertilizers (breed_id, company_nm, fertilizer_nm) VALUES ('21B', 'IFFCO', 'DOUBLENP');
INSERT INTO crop_fertilizers (breed_id, company_nm, fertilizer_nm) VALUES ('3AM', 'IFFCO', 'DOUBLENP');
INSERT INTO crop_fertilizers (breed_id, company_nm, fertilizer_nm) VALUES ('3W', 'IFFCO', 'DOUBLENP');
INSERT INTO crop_fertilizers (breed_id, company_nm, fertilizer_nm) VALUES ('12A', 'IFFCO', 'POTASH');
INSERT INTO crop_fertilizers (breed_id, company_nm, fertilizer_nm) VALUES ('1N', 'IFFCO', 'POTASH');
INSERT INTO crop_fertilizers (breed_id, company_nm, fertilizer_nm) VALUES ('23C', 'IFFCO', 'POTASH');
INSERT INTO crop_fertilizers (breed_id, company_nm, fertilizer_nm) VALUES ('4T', 'IFFCO', 'POTASH');
INSERT INTO crop_fertilizers (breed_id, company_nm, fertilizer_nm) VALUES ('8B', 'IFFCO', 'POTASH');
INSERT INTO crop_fertilizers (breed_id, company_nm, fertilizer_nm) VALUES ('1Z', 'IFFCO', 'SINGLENP');
INSERT INTO crop_fertilizers (breed_id, company_nm, fertilizer_nm) VALUES ('2X', 'IFFCO', 'SINGLENP');
INSERT INTO crop_fertilizers (breed_id, company_nm, fertilizer_nm) VALUES ('4F', 'IFFCO', 'SINGLENP');
INSERT INTO crop_fertilizers (breed_id, company_nm, fertilizer_nm) VALUES ('1A', 'IFFCO', 'UREA');
INSERT INTO crop_fertilizers (breed_id, company_nm, fertilizer_nm) VALUES ('2B', 'IFFCO', 'UREA');
INSERT INTO crop_fertilizers (breed_id, company_nm, fertilizer_nm) VALUES ('7Y', 'IFFCO', 'UREA');
INSERT INTO crop_fertilizers (breed_id, company_nm, fertilizer_nm) VALUES ('21B', 'KRISCHCO', 'DOUBLENP');
INSERT INTO crop_fertilizers (breed_id, company_nm, fertilizer_nm) VALUES ('3AM', 'KRISCHCO', 'DOUBLENP');
INSERT INTO crop_fertilizers (breed_id, company_nm, fertilizer_nm) VALUES ('3W', 'KRISCHCO', 'DOUBLENP');
INSERT INTO crop_fertilizers (breed_id, company_nm, fertilizer_nm) VALUES ('1Z', 'KRISCHCO', 'SINGLENP');
INSERT INTO crop_fertilizers (breed_id, company_nm, fertilizer_nm) VALUES ('2X', 'KRISCHCO', 'SINGLENP');
INSERT INTO crop_fertilizers (breed_id, company_nm, fertilizer_nm) VALUES ('4F', 'KRISCHCO', 'SINGLENP');
INSERT INTO crop_fertilizers (breed_id, company_nm, fertilizer_nm) VALUES ('1A', 'KRISCHCO', 'UREA');
INSERT INTO crop_fertilizers (breed_id, company_nm, fertilizer_nm) VALUES ('2B', 'KRISCHCO', 'UREA');
INSERT INTO crop_fertilizers (breed_id, company_nm, fertilizer_nm) VALUES ('7Y', 'KRISCHCO', 'UREA');

COMMIT;


--7
-- CREATE TABLE
CREATE TABLE biofertilizers (
    company_nm VARCHAR2(200) NOT NULL,
    fertilizer_nm VARCHAR2(200) NOT NULL,
    potassium FLOAT DEFAULT NULL,
    phosphorus FLOAT DEFAULT NULL,
    sulphur FLOAT DEFAULT NULL,
    nitrogen FLOAT DEFAULT NULL,
    cost FLOAT NOT NULL,
    PRIMARY KEY (company_nm, fertilizer_nm)
);

-- INSERT statements
INSERT INTO biofertilizers (company_nm, fertilizer_nm, potassium, phosphorus, sulphur, nitrogen, cost) 
VALUES ('CHAMBAL', 'POTASH', 34, 12, 6, 7, 930);

INSERT INTO biofertilizers (company_nm, fertilizer_nm, potassium, phosphorus, sulphur, nitrogen, cost) 
VALUES ('CHAMBAL', 'UREA', 4, 12, 1, 57, 870);

INSERT INTO biofertilizers (company_nm, fertilizer_nm, potassium, phosphorus, sulphur, nitrogen, cost) 
VALUES ('IFFCO', 'DOUBLENP', 2, 12, 3.5, 47, 850);

INSERT INTO biofertilizers (company_nm, fertilizer_nm, potassium, phosphorus, sulphur, nitrogen, cost) 
VALUES ('IFFCO', 'POTASH', 34, 12, 6, 7, 950);

INSERT INTO biofertilizers (company_nm, fertilizer_nm, potassium, phosphorus, sulphur, nitrogen, cost) 
VALUES ('IFFCO', 'SINGLENP', 0, 12, 3.5, 27, 750);

INSERT INTO biofertilizers (company_nm, fertilizer_nm, potassium, phosphorus, sulphur, nitrogen, cost) 
VALUES ('IFFCO', 'UREA', 4, 12, 1, 57, 900);

INSERT INTO biofertilizers (company_nm, fertilizer_nm, potassium, phosphorus, sulphur, nitrogen, cost) 
VALUES ('KRISCHCO', 'DOUBLENP', 2, 12, 3.5, 47, 900);

INSERT INTO biofertilizers (company_nm, fertilizer_nm, potassium, phosphorus, sulphur, nitrogen, cost) 
VALUES ('KRISCHCO', 'SINGLENP', 1, 10, 4, 50, 870);

INSERT INTO biofertilizers (company_nm, fertilizer_nm, potassium, phosphorus, sulphur, nitrogen, cost) 
VALUES ('KRISCHCO', 'UREA', 4, 12, 1, 57, 900);

COMMIT;

--8
-- CREATE TABLE
CREATE TABLE herbs (
    herbicide VARCHAR2(45) NOT NULL,
    land_amount VARCHAR2(45) DEFAULT NULL,
    quantity VARCHAR2(45) NOT NULL,
    price VARCHAR2(45) NOT NULL,
    PRIMARY KEY (herbicide)
);

-- INSERT INTO TABLE
INSERT INTO herbs (herbicide, land_amount, quantity, price) VALUES ('assurell', '200', '100', '2000');
INSERT INTO herbs (herbicide, land_amount, quantity, price) VALUES ('clethodim', '200', '60', '4000');
INSERT INTO herbs (herbicide, land_amount, quantity, price) VALUES ('clodinafop', '200', '200', '3000');
INSERT INTO herbs (herbicide, land_amount, quantity, price) VALUES ('dakota', '200', '50', '5000');
INSERT INTO herbs (herbicide, land_amount, quantity, price) VALUES ('fargo', '200', '100', '1800');
INSERT INTO herbs (herbicide, land_amount, quantity, price) VALUES ('hoelon', '200', '80', '1600');
INSERT INTO herbs (herbicide, land_amount, quantity, price) VALUES ('poast', '200', '150', '2500');
INSERT INTO herbs (herbicide, land_amount, quantity, price) VALUES ('prowl', '200', '100', '3000');
INSERT INTO herbs (herbicide, land_amount, quantity, price) VALUES ('puma', '200', '75', '1000');
INSERT INTO herbs (herbicide, land_amount, quantity, price) VALUES ('treflan', '200', '125', '2000');

COMMIT;


--9
-- CREATE TABLE
CREATE TABLE herbs_t1 (
    br_id VARCHAR2(200) NOT NULL,
    herbicide VARCHAR2(45) NOT NULL,
    PRIMARY KEY (br_id, herbicide)
);

-- INSERT statements
INSERT INTO herbs_t1 (br_id, herbicide) VALUES ('12A', 'assurell');
INSERT INTO herbs_t1 (br_id, herbicide) VALUES ('6T', 'assurell');
INSERT INTO herbs_t1 (br_id, herbicide) VALUES ('1A', 'clethodim');
INSERT INTO herbs_t1 (br_id, herbicide) VALUES ('1N', 'clodinafop');
INSERT INTO herbs_t1 (br_id, herbicide) VALUES ('7Y', 'clodinafop');
INSERT INTO herbs_t1 (br_id, herbicide) VALUES ('1Z', 'dakota');
INSERT INTO herbs_t1 (br_id, herbicide) VALUES ('21B', 'dakota');
INSERT INTO herbs_t1 (br_id, herbicide) VALUES ('23C', 'fargo');
INSERT INTO herbs_t1 (br_id, herbicide) VALUES ('2B', 'fargo');
INSERT INTO herbs_t1 (br_id, herbicide) VALUES ('2C', 'hoelon');
INSERT INTO herbs_t1 (br_id, herbicide) VALUES ('2X', 'poast');
INSERT INTO herbs_t1 (br_id, herbicide) VALUES ('4T', 'poast');
INSERT INTO herbs_t1 (br_id, herbicide) VALUES ('3AM', 'puma');
INSERT INTO herbs_t1 (br_id, herbicide) VALUES ('8B', 'puma');
INSERT INTO herbs_t1 (br_id, herbicide) VALUES ('3W', 'treflan');
INSERT INTO herbs_t1 (br_id, herbicide) VALUES ('4F', 'treflan');

COMMIT;


--10
-- CREATE TABLE
CREATE TABLE herbs_t2 (
    herbicide VARCHAR2(45) NOT NULL,
    herbs VARCHAR2(200) NOT NULL,
    PRIMARY KEY (herbicide)
);

-- INSERT statements
INSERT INTO herbs_t2 (herbicide, herbs) VALUES ('assurell', 'WO,PD,GF');
INSERT INTO herbs_t2 (herbicide, herbs) VALUES ('clethodim', 'GRASSES');
INSERT INTO herbs_t2 (herbicide, herbs) VALUES ('clodinafop', 'WO,PD,GF');
INSERT INTO herbs_t2 (herbicide, herbs) VALUES ('dakota', 'WO,GF');
INSERT INTO herbs_t2 (herbicide, herbs) VALUES ('fargo', 'GRASS AND BROADLEAF');
INSERT INTO herbs_t2 (herbicide, herbs) VALUES ('hoelon', 'GRASS AND BROADLEAF');
INSERT INTO herbs_t2 (herbicide, herbs) VALUES ('poast', 'WO');
INSERT INTO herbs_t2 (herbicide, herbs) VALUES ('prowl', 'DOWNY BROME');
INSERT INTO herbs_t2 (herbicide, herbs) VALUES ('puma', 'WO,PD');
INSERT INTO herbs_t2 (herbicide, herbs) VALUES ('treflan', 'GRASS AND BROADLEAF');

COMMIT;

--11
-- CREATE TABLE
CREATE TABLE market (
    govt_sub_price NUMBER(6,2) NOT NULL,
    open_market_price NUMBER(6,2) NOT NULL,
    govt_import NUMBER(6,2) DEFAULT NULL,
    govt_export NUMBER(6,2) DEFAULT NULL,
    breed_id VARCHAR2(200) NOT NULL,
    PRIMARY KEY (breed_id)
);

-- INSERT statements
INSERT INTO market (govt_sub_price, open_market_price, govt_import, govt_export, breed_id) 
VALUES (234.50, 150.45, 1300.34, 1200.45, '12A');

INSERT INTO market (govt_sub_price, open_market_price, govt_import, govt_export, breed_id) 
VALUES (345.45, 234.45, 2300.45, 2100.34, '1A');

INSERT INTO market (govt_sub_price, open_market_price, govt_import, govt_export, breed_id) 
VALUES (350.00, 345.00, 2000.00, 1200.00, '2X');

INSERT INTO market (govt_sub_price, open_market_price, govt_import, govt_export, breed_id) 
VALUES (453.12, 231.23, 3400.45, 2309.34, '3W');

COMMIT;

--12
-- Create the biopesticides table
CREATE TABLE biopesticides (
    pesticides VARCHAR2(200) NOT NULL,
    land_amount VARCHAR2(45) DEFAULT NULL,
    quantity VARCHAR2(45) DEFAULT NULL,
    price NUMBER(7,2) NOT NULL,
    PRIMARY KEY (pesticides)
);

-- Insert statements
INSERT INTO biopesticides (pesticides, land_amount, quantity, price) VALUES
('Algicides', '200', '50', 999.99);

INSERT INTO biopesticides (pesticides, land_amount, quantity, price) VALUES
('Avicides', '200', '50', 999.99);

INSERT INTO biopesticides (pesticides, land_amount, quantity, price) VALUES
('Bactericides', '200', '80', 999.99);

INSERT INTO biopesticides (pesticides, land_amount, quantity, price) VALUES
('Fungicides', '200', '70', 999.99);

INSERT INTO biopesticides (pesticides, land_amount, quantity, price) VALUES
('Insecticides', '200', '70', 999.99);

INSERT INTO biopesticides (pesticides, land_amount, quantity, price) VALUES
('Rodenticides', '200', '75', 999.99);

INSERT INTO biopesticides (pesticides, land_amount, quantity, price) VALUES
('Virucides', '200', '60', 999.99);

COMMIT;



-- Function 1: Calculate Total Cost of Fertilizers for a Breed
DECLARE
    total_cost NUMBER := 0;
BEGIN
    SELECT SUM(bf.COST)
    INTO total_cost
    FROM crop_fertilizers cf
    JOIN biofertilizers bf ON cf.COMPANY_NM = bf.COMPANY_NM 
                          AND cf.FERTILIZER_NM = bf.FERTILIZER_NM
    WHERE cf.BREED_ID = '12A';

    DBMS_OUTPUT.PUT_LINE('Total Fertilizer Cost: ' || total_cost);
END;


-- Function 2: Calculate Total Cost of Herbicides for a Breed
CREATE FUNCTION GetTotalHerbicideCost(breed_id IN VARCHAR2)
RETURN FLOAT
IS
    total_cost FLOAT;
BEGIN
    SELECT SUM(TO_NUMBER(h.PRICE))
    INTO total_cost
    FROM herbs_t1 ht1
    JOIN herbs h ON ht1.HERBICIDE = h.HERBICIDE
    WHERE ht1.BR_ID = breed_id;

    RETURN total_cost;
END;


-- Function 3: Get Market Price Difference for a Breed
CREATE OR REPLACE FUNCTION GetMarketPriceDifference(breed_id IN VARCHAR2)
RETURN FLOAT
IS
    market_diff FLOAT;
BEGIN
    SELECT (m.OPEN_MARKET_PRICE - m.GOVT_SUB_PRICE)
    INTO market_diff
    FROM market m
    WHERE m.BREED_ID = breed_id;

    RETURN market_diff;
END;


--Procedure 1: Update Market Prices for a Breed
CREATE OR REPLACE PROCEDURE UpdateMarketPrices(
    breed_id IN VARCHAR2, 
    new_sub_price IN FLOAT, 
    new_open_price IN FLOAT
)
IS
BEGIN
    UPDATE market
    SET GOVT_SUB_PRICE = new_sub_price, 
        OPEN_MARKET_PRICE = new_open_price
    WHERE BREED_ID = breed_id;
END;


-- Procedure 2: Delete Crop Fertilizers by Breed ID
CREATE OR REPLACE PROCEDURE DeleteCropFertilizersByBreed(
    breed_id IN VARCHAR2
)
IS
BEGIN
    DELETE FROM crop_fertilizers
    WHERE BREED_ID = breed_id;
END;


-- Procedure 3: Delete Herbs by Breed ID
CREATE OR REPLACE PROCEDURE DeleteHerbsByBreed(
    breed_id IN VARCHAR2
)
IS
BEGIN
    DELETE FROM herbs_t1
    WHERE BR_ID = breed_id;
END;


-- TABLE - market history
CREATE TABLE market_history (
    id NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    breed_id VARCHAR2(200),
    old_sub_price NUMBER(6,2),
    old_open_price NUMBER(6,2),
    new_sub_price NUMBER(6,2),
    new_open_price NUMBER(6,2),
    update_date DATE
);


-- Trigger 1: Log Market Price Updates 
CREATE OR REPLACE TRIGGER After_Update_Market_Prices
AFTER UPDATE ON market
FOR EACH ROW
BEGIN
    INSERT INTO market_history (
        BREED_ID, 
        OLD_SUB_PRICE, 
        OLD_OPEN_PRICE, 
        NEW_SUB_PRICE, 
        NEW_OPEN_PRICE, 
        UPDATE_DATE
    ) VALUES (
        :OLD.BREED_ID, 
        :OLD.GOVT_SUB_PRICE, 
        :OLD.OPEN_MARKET_PRICE, 
        :NEW.GOVT_SUB_PRICE, 
        :NEW.OPEN_MARKET_PRICE, 
        SYSDATE
    );
END;
/


-- TABLE - crop_fertilizers_history
CREATE TABLE crop_fertilizers_history (
    BREED_ID VARCHAR2(200),
    COMPANY_NM VARCHAR2(200),
    FERTILIZER_NM VARCHAR2(200),
    DELETE_DATE DATE
);


-- Trigger 2: Log Deleted Fertilizers 
CREATE OR REPLACE TRIGGER Before_Delete_Crop_Fertilizers
BEFORE DELETE ON crop_fertilizers
FOR EACH ROW
BEGIN
    INSERT INTO crop_fertilizers_history (
        BREED_ID, 
        COMPANY_NM, 
        FERTILIZER_NM, 
        DELETE_DATE
    )
    VALUES (
        :OLD.BREED_ID, 
        :OLD.COMPANY_NM, 
        :OLD.FERTILIZER_NM, 
        SYSDATE
    );
END;
/

-- TABLE - herbs_history
CREATE TABLE herbs_history (
    BR_ID VARCHAR2(200),
    HERBICIDE VARCHAR2(45),
    DELETE_DATE DATE
);


-- Trigger 3: Log Deleted Herbs
CREATE OR REPLACE TRIGGER After_Delete_Herbs
AFTER DELETE ON herbs_t1
FOR EACH ROW
BEGIN
    INSERT INTO herbs_history (
        BR_ID, 
        HERBICIDE, 
        DELETE_DATE
    )
    VALUES (
        :OLD.BR_ID, 
        :OLD.HERBICIDE, 
        SYSDATE
    );
END;

  -- Trigger 4: Validate Market Prices 
  CREATE OR REPLACE TRIGGER Before_Insert_Market
BEFORE INSERT ON market
FOR EACH ROW
BEGIN
    IF :NEW.GOVT_SUB_PRICE >= :NEW.OPEN_MARKET_PRICE THEN
        RAISE_APPLICATION_ERROR(-20001, 'Government Subsidy Price cannot be greater than or equal to Open Market Price!');
    END IF;
END;
/
  
--Cursor 1: Used in Function 1 (Iterate over crop fertilizers)
CREATE OR REPLACE FUNCTION GetTotalFertilizerCost(breed_id IN VARCHAR2)
RETURN FLOAT
IS
    total_cost FLOAT := 0;
BEGIN
    SELECT SUM(bf.COST)
    INTO total_cost
    FROM crop_fertilizers cf
    JOIN biofertilizers bf 
        ON cf.COMPANY_NM = bf.COMPANY_NM 
       AND cf.FERTILIZER_NM = bf.FERTILIZER_NM
    WHERE cf.BREED_ID = breed_id;

    RETURN total_cost;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 0;
END;


-- Cursor 2: Used in Function 2 (Iterate over herbicides)
CREATE OR REPLACE FUNCTION GetTotalHerbicideCost(breed_id IN VARCHAR2)
RETURN FLOAT
IS
    total_cost FLOAT := 0;
BEGIN
    SELECT SUM(TO_NUMBER(h.PRICE))
    INTO total_cost
    FROM herbs_t1 ht1
    JOIN herbs h ON ht1.HERBICIDE = h.HERBICIDE
    WHERE ht1.BR_ID = breed_id;

    RETURN total_cost;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 0;
END;


-- Exception 1: Breed ID Check in Market Price Update
CREATE OR REPLACE PROCEDURE UpdateMarketPrices (
    breed_id IN VARCHAR2,
    new_sub_price IN NUMBER,
    new_open_price IN NUMBER
)
IS
    breed_exists NUMBER := 0;
BEGIN
    -- Check if breed exists
    SELECT COUNT(*) INTO breed_exists
    FROM market
    WHERE BREED_ID = breed_id;

    -- If not found, raise an application error
    IF breed_exists = 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Breed ID does not exist in the market table!');
    END IF;

    -- Update prices
    UPDATE market
    SET GOVT_SUB_PRICE = new_sub_price,
        OPEN_MARKET_PRICE = new_open_price
    WHERE BREED_ID = breed_id;
END;
/


-- Exception 2: Breed ID Check in Fertilizer Deletion
CREATE OR REPLACE PROCEDURE DeleteCropFertilizersByBreed (
    breed_id IN VARCHAR2
)
IS
    breed_exists NUMBER;
BEGIN
    -- Check if breed exists in crop_fertilizers table
    SELECT COUNT(*) INTO breed_exists
    FROM crop_fertilizers
    WHERE BREED_ID = breed_id;

    -- Raise error if breed doesn't exist
    IF breed_exists = 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Breed ID does not exist in the crop fertilizers table!');
    END IF;

    -- Delete crop fertilizers
    DELETE FROM crop_fertilizers
    WHERE BREED_ID = breed_id;
    
    COMMIT; -- Optional: Commit if desired
END;
/

-- Exception 3: Breed ID Check in Herbicide Deletion
CREATE OR REPLACE PROCEDURE DeleteHerbsByBreed (
    breed_id IN VARCHAR2
)
IS
    breed_exists NUMBER;
BEGIN
    -- Check if breed exists in herbs_t1 table
    SELECT COUNT(*) INTO breed_exists
    FROM herbs_t1
    WHERE BR_ID = breed_id;

    -- Raise error if breed doesn't exist
    IF breed_exists = 0 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Breed ID does not exist in the herbs table!');
    END IF;

    -- Delete herbs
    DELETE FROM herbs_t1
    WHERE BR_ID = breed_id;

    COMMIT; -- Optional: Commit if auto-commit is off
END;
/