------Query1------

SELECT 
Company_Name
FROM 
Oil_and_Gas_Company;

------Query2------

SELECT 
Product_ID, Crude_Oil_Amount
FROM 
Production_Crude_Oil
WHERE 
Product_ID > 100;

------Query3------

SELECT 
Fact_Type_ID, Fact_Type_Description
FROM 
Green_House_Gas_Emission_Facts;

SELECT
c.Company_Name,
SUM(pco.Crude_Oil_Amount) AS Total_Crude_Oil_Production
FROM
Oil_and_Gas_Company c
JOIN
National_Inventory_Reports nir ON c.Company_ID = nir.Company_ID
JOIN
Production_Crude_Oil pco ON nir.Product_ID = pco.Product_ID
GROUP BY
c.Company_Name
ORDER BY
Total_Crude_Oil_Production DESC;

------Query4------

SELECT 
et.Type_Description,
AVG(nir.GHG_Per_Barrel_Of_Oil) AS Average_GHG_Per_Barrel
FROM 
Emission_Types et
JOIN 
National_Inventory_Reports nir ON et.Type_ID = nir.Type_ID
GROUP BY 
et.Type_Description;

------Query5------

SELECT 
nir.*,
et.Type_Description,
ghgef.Fact_Type_Description
FROM 
National_Inventory_Reports nir
JOIN 
Emission_Types et ON nir.Type_ID = et.Type_ID
JOIN 
Green_House_Gas_Emission_Facts ghgef ON nir.Fact_Type_ID = ghgef.Fact_Type_ID AND nir.Company_ID = ghgef.Company_ID
WHERE 
nir.Prov_ID = 'P1';
 
