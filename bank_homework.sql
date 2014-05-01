-- In case there is already a bank_homework database, drop it
DROP  DATABASE bank_homework;

-- Create a bank_homework database
CREATE DATABASE bank_homework;

-- Connect to the bank_homework databases
\c bank_homework

-- Create a payments table
--  The table should have columns of id, created_at, amount, payer_name,
--  recipient_name, and description with the appropriate datatypes

CREATE TABLE  payments (
  id SERIAL PRIMARY KEY,
  created_at DATE,
  amount NUMERIC,
  payer_name TEXT,
  recipient_name TEXT,
  description TEXT
);

-- Alter the payments table, add the column of `zipcode`
-- to specify where the transaction was made

ALTER TABLE payments ADD zipcode NUMERIC(5);

-- Insert 20 rows into the payments table
-- The first of these payments should be deposits
-- try to keep the accounts positive and have at least three different payers.

INSERT INTO payments (created_at, amount, payer_name, recipient_name, description, zipcode)
  VALUES ('2014-02-10', 12, 'Ethan Gould', 'Kelly Clarkson', 'For buying pizza', 66574);
INSERT INTO payments (created_at, amount, payer_name, recipient_name, description, zipcode)
  VALUES ('2014-01-18', 5, 'Wiz Khalifa', 'John Smith', 'For buying pizza', 99515);
INSERT INTO payments (created_at, amount, payer_name, recipient_name, description, zipcode)
  VALUES ('2014-02-06', 18, 'Ethan Gould', 'Timmy Maxwell', 'For buying pizza', 99515);
INSERT INTO payments (created_at, amount, payer_name, recipient_name, description, zipcode)
  VALUES ('2014-04-12', 50, 'Jack Daniels', 'Kelly Clarkson', 'For buying pizza', 88361);
INSERT INTO payments (created_at, amount, payer_name, recipient_name, description, zipcode)
  VALUES ('2014-02-12', 64, 'Ethan Gould', 'John Smith', 'For buying pizza', 23497);
INSERT INTO payments (created_at, amount, payer_name, recipient_name, description, zipcode)
  VALUES ('2014-04-25', 39, 'Ethan Gould', 'John Smith', 'For buying pizza', 66574);
INSERT INTO payments (created_at, amount, payer_name, recipient_name, description, zipcode)
  VALUES ('2014-02-11', 97, 'Ethan Gould', 'Timmy Maxwell', 'For buying pizza', 99515);
INSERT INTO payments (created_at, amount, payer_name, recipient_name, description, zipcode)
  VALUES ('2014-02-27', 13, 'Wiz Khalifa', 'Timmy Maxwell', 'For buying pizza', 23497);
INSERT INTO payments (created_at, amount, payer_name, recipient_name, description, zipcode)
  VALUES ('2014-04-18', 22, 'Ethan Gould', 'Kelly Clarkson', 'For buying pizza', 99515);
INSERT INTO payments (created_at, amount, payer_name, recipient_name, description, zipcode)
  VALUES ('2014-01-12', 75, 'Jack Daniels', 'John Smith', 'For buying pizza', 88361);
INSERT INTO payments (created_at, amount, payer_name, recipient_name, description, zipcode)
  VALUES ('2014-02-07', -33, 'Wiz Khalifa', 'Kelly Clarkson', 'For buying pizza', 99515);
INSERT INTO payments (created_at, amount, payer_name, recipient_name, description, zipcode)
  VALUES ('2014-03-09', -62, 'Jack Daniels', 'John Smith', 'For buying pizza', 66574);
INSERT INTO payments (created_at, amount, payer_name, recipient_name, description, zipcode)
  VALUES ('2014-01-12', -81, 'Ethan Gould', 'John Smith', 'For buying pizza', 88361);
INSERT INTO payments (created_at, amount, payer_name, recipient_name, description, zipcode)
  VALUES ('2014-04-29', -66, 'Jack Daniels', 'Kelly Clarkson', 'For buying pizza', 66574);
INSERT INTO payments (created_at, amount, payer_name, recipient_name, description, zipcode)
  VALUES ('2014-04-24', -9, 'Ethan Gould', 'John Smith', 'For buying pizza', 88361);
INSERT INTO payments (created_at, amount, payer_name, recipient_name, description, zipcode)
  VALUES ('2014-01-03', -3, 'Jack Daniels', 'Ethan Gould', NULL , 23497);
INSERT INTO payments (created_at, amount, payer_name, recipient_name, description, zipcode)
  VALUES ('2014-04-14', -48, 'Wiz Khalifa', 'John Smith', 'For buying pizza', 99515);
INSERT INTO payments (created_at, amount, payer_name, recipient_name, description, zipcode)
  VALUES ('2014-01-19', -35, 'Ethan Gould', 'Timmy Maxwell', 'For buying pizza', 23497);
INSERT INTO payments (created_at, amount, payer_name, recipient_name, description, zipcode)
  VALUES ('2014-02-13', -82, 'Wiz Khalifa', 'John Smith', 'For buying pizza', 23497);
INSERT INTO payments (created_at, amount, payer_name, recipient_name, description, zipcode)
  VALUES ('2014-04-28', -54, 'Ethan Gould', 'Timmy Maxwell', NULL , 99515);

-- You receive notice that the payment with id of 9 is $10 too low.
-- Alter that row so that it is corrected
-- UPDATE payments SET amount = 32 WHERE amount = 22;

-- -- Delete all payments with an amount under $2
-- DELETE FROM payments WHERE amount < 2;

-- -- Select all entries from the payments table
-- SELECT * FROM payments;

-- In a single query, output all payments ordered from the largest to the smallest
--SELECT * FROM payments ORDER BY amount DESC;

-- In a single query, output the names of all distinct recipients
-- SELECT DISTINCT recipient_name FROM payments;

-- In a single query, select all payments created in the past week
-- SELECT * FROM payments WHERE created_at > now() - interval '1 week'

-- In a single query, select all payments with a blank description
--SELECT * FROM payments WHERE description IS NULL

-- In a single query, select all payments matching the name of one of the payers (choose any single one)
-- SELECT * FROM payments WHERE payer_name ILIKE 'Wiz Khalifa%';
