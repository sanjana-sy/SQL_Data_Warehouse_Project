-- ============================================================
-- Script Purpose:
-- This script creates a new database named 'DataWarehouse' after checking if it exists. 
-- If the database exists, it is dropped and recreated. Additionally, three schema-like structures 
-- are established using table prefixes: 'bronze', 'silver', and 'gold'.
--
-- WARNING:
-- Running this script will drop the entire 'DataWarehouse' database if it exists. 
-- All data in the database will be permanently deleted. Proceed with caution 
-- and ensure proper backups before running this script.
-- ============================================================

-- Drop the database if it exists
DROP DATABASE IF EXISTS DataWarehouse;

-- Create the new database
CREATE DATABASE DataWarehouse;
USE DataWarehouse;

-- Create tables with schema-like prefixes
CREATE TABLE bronze_data (id INT PRIMARY KEY, data TEXT);
CREATE TABLE silver_data (id INT PRIMARY KEY, data TEXT);
CREATE TABLE gold_data (id INT PRIMARY KEY, data TEXT);
