DROP DATABASE IF EXISTS crowdfunding_db_schema;
CREATE DATABASE crowdfunding_db_schema;

DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS campaign;

CREATE TABLE category(
    category_id VARCHAR(100) NOT NULL PRIMARY KEY,
    category VARCHAR(100) NOT NULL
);


CREATE TABLE subcategory (
    subcategory_id VARCHAR(100) NOT NULL PRIMARY KEY,
    subcategory VARCHAR(100) NOT NULL
);

CREATE TABLE contacts (
    contact_id VARCHAR(100) NOT NULL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);

CREATE TABLE campaign (
    cf_id INT NOT NULL PRIMARY KEY,
	contact_id VARCHAR(100) NOT NULL,
    company_name VARCHAR(100) NOT NULL,
    description VARCHAR(100) NOT NULL,
    goal DECIMAL(10,2) NOT NULL,
    pledged DECIMAL(10,2) NOT NULL,
    outcome VARCHAR(100) NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR(100) NOT NULL,
    currency VARCHAR(100) NOT NULL,
    launch_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(100) NOT NULL,
    subcategory_id VARCHAR(100) NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

SELECT * FROM contacts
SELECT * FROM category
SELECT * FROM subcategory
SELECT * FROM campaign