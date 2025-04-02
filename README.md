# Oil-Gas-Company-GHG-Emissions

# Problem Statement 

The oil and gas industry in Canada is a significant contributor to greenhouse gas (GHG) emissions, which has led to widespread criticism and concerns over its environmental impact. When viewed as a whole, the industry paints a negative picture due to its substantial emissions footprint. However, analyzing emissions on a per-barrel basis can provide a more nuanced perspective, demonstrating that investments in new technologies are yielding measurable progress in reducing the climate impact of oil production. While producers are actively investing in technologies to reduce their environmental footprint, tracking and evaluating the effectiveness of these efforts over time remains a challenge. Different stages of oil and gas extraction—specifically the conventional drilling of light and heavy crude oil—contribute varying levels of emissions per barrel of oil produced. To address this, my project will focus on evaluating GHG emissions intensity (emissions per barrel) across Canadian provinces for the conventional drilling of light and heavy crude oil for 2025. 

# ER Model 

![ER Model](https://github.com/user-attachments/assets/e4c1241b-afd3-4ad9-9530-54c7cbdf4a8a)

# Relational Model 

![Relational Model](https://github.com/user-attachments/assets/8b1d4c34-4545-4929-8ff6-a0e5a3056453)

# Source Code 

* [Create Script](https://github.com/EmmaMickleborough1/Oil-Gas-Company-GHG-Emissions/commit/d910be1696fe6e163763be6ada102bbc14a2bbd1#diff-1784fb8c9b46b752ac80a64a0fb19ccc30731621c64354448c2b2b669b7ee948)

* [Populate Script](https://github.com/EmmaMickleborough1/Oil-Gas-Company-GHG-Emissions/commit/d910be1696fe6e163763be6ada102bbc14a2bbd1#diff-845d4fdd65312334d66cc0cee9b37a212fcc5895aaf6f2e68c840e8abfc94d03)
  
## Sample Queris 


### Query 1 

Which companies are in the database?

```
SELECT
  Company_Name
FROM
  Oil_and_Gas_Company;
```

### Query 2 

What are the Crude Oil Amounts for Product IDs greater than 100?

```
SELECT
  Product_ID, Crude_Oil_Amount
FROM
  Production_Crude_Oil
WHERE
  Product_ID > 100;
```

### Query 3

Which oil and gas companies had the highest total crude oil production, and what were those production amounts?

```
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
```

### Query 4

What is the average GHG per barrel of oil for each emission type?

```
SELECT
 et.Type_Description,
 AVG(nir.GHG_Per_Barrel_Of_Oil) AS Average_GHG_Per_Barrel
FROM
 Emission_Types et
JOIN
 National_Inventory_Reports nir ON et.Type_ID = nir.Type_ID
GROUP BY
 et.Type_Description; 
```

### Query 5

What is the national inventory reports for Alberta province, including the oil type and fact description? 

```
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
```
