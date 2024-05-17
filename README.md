# SQL-database-design-project
## introduction
I came across the dataset on kaggle while looking for a database to create an Entity Relationship Diagram
### Database Creation & Data Loading
The first step I took was to create a database and load the data into my database. The database name of choice is hoteldataset. Next, I created a table to load the data into and finally get the dataset into the database and table. This can be achieved in two different ways and they are using the Table Import wizard on MySQL Workbench to import the data or using LOAD DATA INFILE on MySQL Shell to load the data into a table. Using the table import wizard i loaded the dataset into the table.

### Data Normalization
Observing the data, I noticed it was denormalized and took steps to normalize the data.
Data normalization involves organizing data based on assigned attributes as a part of a larger data model. The main objective of database normalization is to eliminate redundant data, minimize data modification errors, and simplify the query process. 
The SQL technique I used to normalize my data was the CTAS (CREATE TABLE AS SELECT) method. The table was sub divided into 5 entities namely:
- Customers
- Records 
- Revenue
- Bookings
- Hotel accommodations
### Database Diagram Design
Using the Reverse Engineer feature of MySQL, I was able to create the ER Diagram below.

The diagram above shows the relationship between the entities in the databases
