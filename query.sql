-- Query to check successful load

SELECT * FROM sales;

SELECT * FROM purchases;

SELECT * FROM inventories;

SELECT * FROM grossmargin;

-- Join table on year

SELECT sales.year, sales.retail_sales_amount, purchases.purchases_amount, inventories.inventories_amount, grossmargin.gross_margin_amount
FROM sales
INNER JOIN purchases on sales.year=purchases.year
INNER JOIN inventories on sales.year=inventories.year
Inner Join grossmargin on sales.year= grossmargin.year