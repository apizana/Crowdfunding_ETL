--Create sql table for contacts.csv file
CREATE TABLE contacts(
	contact_id INT PRIMARY KEY,
	first_name VARCHAR(15) NOT NULL,
	last_name VARCHAR(15) NOT NULL,
	email VARCHAR(50) NOT NULL

);
------------------------------------------------
--Create sql table for category.csv file
CREATE TABLE category(
	category_id CHAR(4) PRIMARY KEY NOT NULL,
	category VARCHAR(30) NOT NULL

);
------------------------------------------------
--Create sql table for subcategory.csv file
CREATE TABLE subcategory(
	subcategory_id VARCHAR(10) PRIMARY KEY NOT NULL,
	subcategory VARCHAR(30) NOT NULL

);
------------------------------------------------
--Create sql table for campaign.csv file
CREATE TABLE campaign(
	cf_id INT PRIMARY KEY,
	contact_id INT,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	company_name VARCHAR(40) NOT NULL,
	description VARCHAR(60) NOT NULL,
	goal DECIMAL(8,2) NOT NULL,
	pledged DECIMAL(8,2) NOT NULL,
	outcome VARCHAR(15) NOT NULL,
	backers_count INT,
	country VARCHAR(2) NOT NULL,
	currency VARCHAR(3) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(5) NOT NULL,
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	subcategory_id VARCHAR(10) NOT NULL,
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
	
);
------------------------------------------------
--Run SELECT queries to confirm that the data has been transferred into the created tables
SELECT * FROM contacts;
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM campaign;