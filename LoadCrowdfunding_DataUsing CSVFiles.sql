

COPY contact
FROM '/Users/A406063/Desktop/Berkeley_projects/hw/Crowdfunding_ETL/Resources/contacts.csv'
DELIMITER ','
CSV HEADER;

COPY category
FROM '/Users/A406063/Desktop/Berkeley_projects/hw/Crowdfunding_ETL/Resources/category.csv'
DELIMITER ','
CSV HEADER;


COPY subcategory
FROM '/Users/A406063/Desktop/Berkeley_projects/hw/Crowdfunding_ETL/Resources/subcategory.csv'
DELIMITER ','
CSV HEADER;




 
COPY campaign
FROM '/Users/A406063/Desktop/Berkeley_projects/hw/Crowdfunding_ETL/Resources/campaign.csv'
DELIMITER ','
CSV HEADER;


select * from campaign;
select * from contact;
select * from category;
select * from subcategory;


