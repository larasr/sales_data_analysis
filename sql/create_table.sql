-- varchar: strings com comprimento variável
-- char: strings com comprimento fixo
CREATE TABLE sales_data (
	Id_Product SERIAL PRIMARY KEY,
	Date DATE,
	Day INT,
	Month VARCHAR(20),
	Year INT,
	Customer_Age INT,
	Age_Group VARCHAR(20),
	Customer_Gender CHAR(1),
	Country VARCHAR(50),
	State VARCHAR (50),
	Product_Category VARCHAR(50),
	Sub_Category VARCHAR(50),
	Product VARCHAR(50),
	Order_Quantity INT,
	Unit_Cost INT,
	Unit_Price INT,
	Profit INT,
	Total_Cost INT, 
	Total_Price INT
);