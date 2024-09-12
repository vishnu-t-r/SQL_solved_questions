use questions;

/*
Question:-
Calculate the moving average of a stock price over the previous 30 days?
*/

/*
-- Create table for stock prices
CREATE TABLE stock_prices (
    id INT identity(1,1) PRIMARY KEY,
    stock_id VARCHAR(10),      -- Identifier for the stock (e.g., AAPL, MSFT)
    stock_date DATE,           -- Date of the stock price
    price DECIMAL(10, 2)       -- Stock price (up to 10 digits, 2 decimal places)
);

-- Insert sample data into stock_prices table
INSERT INTO stock_prices (stock_id, stock_date, price) VALUES
('AAPL', '2099-08-01', 150.00),
('AAPL', '2099-08-02', 152.00),
('AAPL', '2099-08-03', 149.50),
('AAPL', '2099-08-04', 153.20),
('AAPL', '2099-08-05', 155.00),
('AAPL', '2099-08-06', 156.50),
('AAPL', '2099-08-07', 157.80),
('AAPL', '2099-08-08', 154.00),
('AAPL', '2099-08-09', 158.00),
('AAPL', '2099-08-10', 159.00),
('AAPL', '2099-08-11', 161.00),
('AAPL', '2099-08-12', 160.50),
('AAPL', '2099-08-13', 162.00),
('AAPL', '2099-08-14', 164.00),
('AAPL', '2099-08-15', 163.50),
('AAPL', '2099-08-16', 165.00),
('AAPL', '2099-08-17', 167.50),
('AAPL', '2099-08-18', 166.00),
('AAPL', '2099-08-19', 168.00),
('AAPL', '2099-08-20', 170.00),
('AAPL', '2099-08-21', 169.50),
('AAPL', '2099-08-22', 171.00),
('AAPL', '2099-08-23', 172.50),
('AAPL', '2099-08-24', 173.00),
('AAPL', '2099-08-25', 172.00),
('AAPL', '2099-08-26', 174.00),
('AAPL', '2099-08-27', 175.50),
('AAPL', '2099-08-28', 177.00),
('AAPL', '2099-08-29', 176.50),
('AAPL', '2099-08-30', 178.00),
('AAPL', '2099-08-31', 179.00),
('AAPL', '2099-09-01', 178.50),
('AAPL', '2099-09-02', 180.00),
('AAPL', '2099-09-03', 181.50),
('AAPL', '2099-09-04', 183.00),
('AAPL', '2099-09-05', 182.50),
('AAPL', '2099-09-06', 184.00),
('AAPL', '2099-09-07', 185.00),
('AAPL', '2099-09-08', 186.50),
('AAPL', '2099-09-09', 188.00),
('AAPL', '2099-09-10', 187.50),
('AAPL', '2099-09-11', 189.00),
('AAPL', '2099-09-12', 190.50),
('AAPL', '2099-09-13', 192.00),
('AAPL', '2099-09-14', 191.50),
('AAPL', '2099-09-15', 193.00),
('AAPL', '2099-09-16', 194.50),
('AAPL', '2099-09-17', 195.00),
('AAPL', '2099-09-18', 196.50),
('AAPL', '2099-09-19', 197.00),
('AAPL', '2099-09-20', 198.50),
('AAPL', '2099-09-21', 199.00),
('AAPL', '2099-09-22', 200.00),
('AAPL', '2099-09-23', 201.50),
('AAPL', '2099-09-24', 202.00),
('AAPL', '2099-09-25', 203.50),
('AAPL', '2099-09-26', 205.00),
('AAPL', '2099-09-27', 204.50),
('AAPL', '2099-09-28', 206.00),
('AAPL', '2099-09-29', 207.50),
('AAPL', '2099-09-30', 208.00),
('AAPL', '2099-10-01', 209.00),
('AAPL', '2099-10-02', 210.50),
('AAPL', '2099-10-03', 211.00),
('AAPL', '2099-10-04', 212.00),
('AAPL', '2099-10-05', 213.50),
('AAPL', '2099-10-06', 215.00),
('AAPL', '2099-10-07', 214.50),
('AAPL', '2099-10-08', 216.00),
('AAPL', '2099-10-09', 217.50),
('AAPL', '2099-10-10', 219.00),
('AAPL', '2099-10-11', 218.50),
('AAPL', '2099-10-12', 220.00),
('AAPL', '2099-10-13', 221.50),
('AAPL', '2099-10-14', 222.00),
('AAPL', '2099-10-15', 223.50),
('AAPL', '2099-10-16', 224.00),
('AAPL', '2099-10-17', 225.50),
('AAPL', '2099-10-18', 226.00),
('AAPL', '2099-10-19', 227.50),
('AAPL', '2099-10-20', 229.00),
('AAPL', '2099-10-21', 228.50);
*/

select * from stock_prices;


select stock_id,
		stock_date,
		price,
		avg(price) over(partition by stock_id 
						order by stock_date asc
						rows between 29 preceding and current row) as moving_avg_30_days
from stock_prices;
