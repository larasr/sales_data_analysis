-- Execução realizada via psql tool workspace
\copy sales_data (date, day, month, year, customer_age, age_group, customer_gender, country, state, product_category, sub_category, product, order_quantity, unit_cost, unit_price, profit, total_cost, total_price) FROM 'C:\path\sales_data_analysis\data\cleaned_data.csv' WITH (DELIMITER ';', FORMAT csv, HEADER true);
