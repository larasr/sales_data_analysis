-- * Para executar a query desejada em questão, comente as demais *
-- Query 1: Venda total por categoria de produto
SELECT product_category, SUM(total_price) AS total_price FROM sales_data
  GROUP BY product_category
  ORDER BY total_price DESC;

-- Query 2: Quantidade total de produtos vendidos por categoria
SELECT product_category, SUM(order_quantity) AS sales_quantity FROM sales_data
  GROUP BY product_category
  ORDER BY sales_quantity DESC;

-- Query 3: Lucro total por categoria de produtos
SELECT product_category, SUM(profit) AS profit FROM sales_data
  GROUP BY product_category
  ORDER BY profit DESC;

-- Query 4: Venda total dos 5 produtos mais vendidos
SELECT product, product_category, SUM(total_price) AS total_price FROM sales_data
  GROUP BY product, product_category
  ORDER BY total_price DESC LIMIT 5;

-- Query 5: Quantidade total dos 5 produtos mais vendidos
SELECT product, product_category, SUM(order_quantity) AS sales_quantity FROM sales_data
  GROUP BY product, product_category
  ORDER BY sales_quantity DESC LIMIT 5;

-- Query 6: Venda total dos 5 produtos mais vendidos por país e estado
SELECT product, product_category, country, state, SUM(total_price) AS total_price FROM sales_data
  GROUP BY product, product_category, country, state
  ORDER BY total_price DESC LIMIT 5;

-- Query 7: Venda total por país
SELECT country, SUM(total_price) AS total_price FROM sales_data
  GROUP BY country
  ORDER BY total_price DESC;

-- Query 8: Venda total por país e estado
SELECT country, state, SUM(total_price) AS total_price FROM sales_data
  GROUP BY country, state
  ORDER BY total_price DESC;

-- Query 9: Vendas em quantidade por grupo de idade
SELECT age_group, SUM(order_quantity) AS sales_quantity FROM sales_data
  GROUP BY age_group
  ORDER BY sales_quantity DESC;

-- Query 10: Vendas em quantidade por grupo de idade e gênero
SELECT age_group, customer_gender, SUM(order_quantity) AS sales_quantity FROM sales_data
  GROUP BY age_group, customer_gender
  ORDER BY sales_quantity DESC;