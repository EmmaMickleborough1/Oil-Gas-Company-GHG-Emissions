DROP TABLE IF EXISTS National_Inventory_Reports;
DROP TABLE IF EXISTS Production_Crude_Oil;
DROP TABLE IF EXISTS Green_House_Gas_Emission_Data;
DROP TABLE IF EXISTS Emission_Types;
DROP TABLE IF EXISTS Canadian_Provinces;
DROP TABLE IF EXISTS Green_House_Gas_Emission_Facts;
DROP TABLE IF EXISTS Oil_and_Gas_Company;


CREATE TABLE Oil_and_Gas_Company 
( 
  Company_ID VARCHAR(5) NOT NULL, 
  Company_Name VARCHAR(20) NOT NULL, 
  Year INT NOT NULL, 
  PRIMARY KEY (Company_ID) 
); 
 
CREATE TABLE Green_House_Gas_Emission_Facts 
( 
  Fact_Type_ID VARCHAR(15) NOT NULL, 
  Fact_Type_Description VARCHAR(35) NOT NULL, 
  Company_ID VARCHAR(5) NOT NULL, 
  PRIMARY KEY (Fact_Type_ID,Company_ID), 
  FOREIGN KEY (Company_ID) REFERENCES Oil_and_Gas_Company(Company_ID) 
); 
 
CREATE TABLE Canadian_Provinces 
( 
  Prov_Name VARCHAR(20) NOT NULL, 
  Prov_ID VARCHAR(15) NOT NULL, 
  PRIMARY KEY (Prov_ID) 
); 
 
CREATE TABLE Emission_Types
( 
  Type_ID VARCHAR(5) NOT NULL, 
  Type_Description VARCHAR(25) NOT NULL, 
  PRIMARY KEY (Type_ID) 
); 
 
CREATE TABLE Green_House_Gas_Emission_Data 
( 
  GHG_Value INT NOT NULL, 
  Date_Reported VARCHAR(15) NOT NULL, 
  ID INT NOT NULL, 
  PRIMARY KEY (ID) 
); 
 
CREATE TABLE Production_Crude_Oil 
( 
  Crude_Oil_Amount INT NOT NULL, 
  Product_ID INT NOT NULL, 
  ID INT NOT NULL, 
  PRIMARY KEY (Product_ID), 
  FOREIGN KEY (ID) REFERENCES Green_House_Gas_Emission_Data(ID) 
); 
 
CREATE TABLE National_Inventory_Reports 
( 
  Prov_ID VARCHAR(15) NOT NULL, 
  Product_ID INT NOT NULL, 
  Type_ID VARCHAR(5) NOT NULL, 
  Fact_Type_ID VARCHAR(15) NOT NULL,
  Company_ID VARCHAR(5) NOT NULL,
  GHG_Per_Barrel_Of_Oil INT NOT NULL, 
  FOREIGN KEY (Prov_ID) REFERENCES Canadian_Provinces(Prov_ID), 
  FOREIGN KEY (Product_ID) REFERENCES Production_Crude_Oil(Product_ID), 
  FOREIGN KEY (Type_ID) REFERENCES Emission_Types(Type_ID), 
  FOREIGN KEY (Fact_Type_ID,Company_ID) REFERENCES Green_House_Gas_Emission_Facts(Fact_Type_ID,Company_ID) 
); 

 