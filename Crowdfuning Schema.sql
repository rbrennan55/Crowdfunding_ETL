CREATE TABLE campaign (
    cf_id INTEGER PRIMARY KEY,
    contact_id INTEGER,
    company_name VARCHAR,
    description VARCHAR,
    goal INTEGER,
    pledge INTEGER,
    outcome VARCHAR,
    backers_count INTEGER,
    country VARCHAR,
    currency INTEGER,
    launched_date DATE,
    end_date DATE,
    category_id VARCHAR,
    subcategory_id VARCHAR,
    FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
    FOREIGN KEY (category_id) REFERENCES category (category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)
);
CREATE TABLE category(
	category_id VARCHAR PRIMARY KEY,
	category VARCHAR);

CREATE TABLE subcategory(
	subcategory_id VARCHAR PRIMARY KEY,
	subcategory VARCHAR);

CREATE TABLE contacts(
	contact_id INTEGER PRIMARY KEY,
	first_name VARCHAR,
	last_name VARCHAR,
	email VARCHAR);