# Oil-Gas-Company-GHG-Emissions

# Problem Statement 

The oil and gas industry in Canada is a significant contributor to greenhouse gas (GHG) emissions, which has led to widespread criticism and concerns over its environmental impact. When viewed as a whole, the industry paints a negative picture due to its substantial emissions footprint. However, analyzing emissions on a per-barrel basis can provide a more nuanced perspective, demonstrating that investments in new technologies are yielding measurable progress in reducing the climate impact of oil production. While producers are actively investing in technologies to reduce their environmental footprint, tracking and evaluating the effectiveness of these efforts over time remains a challenge. Different stages of oil and gas extraction—specifically the conventional drilling of light and heavy crude oil—contribute varying levels of emissions per barrel of oil produced. To address this, my project will focus on evaluating GHG emissions intensity (emissions per barrel) across Canadian provinces for the conventional drilling of light and heavy crude oil over a 12-year period. The database will track emission levels and analyze trends to demonstrate how emissions intensity has been reduced through technological advancements and other mitigation strategies implemented by companies in the oil and gas industry. 

# ER Model 

![ER Model](https://github.com/user-attachments/assets/e4c1241b-afd3-4ad9-9530-54c7cbdf4a8a)

# Relational Model 

![Relational Model](https://github.com/user-attachments/assets/8b1d4c34-4545-4929-8ff6-a0e5a3056453)

# Source Code 

* [Create Script (DDL)]
* [Populate Script (DML)]
  
## Sample Queris 


### Query 1 

Which companies are in the database?

```
SELECT Company_Name
FROM Oil_and_Gas_Company;
```

### Query 2 

What are the Crude Oil Amounts for Product IDs greater than 100?

```
SELECT Product_ID, Crude_Oil_Amount
FROM Production_Crude_Oil
WHERE Product_ID > 100;
```

### Query 3

What are the Fact Type Descriptions and their IDs?

```
SELECT Fact_Type_ID, Fact_Type_Description
FROM Green_House_Gas_Emission_Facts;
```

### Query 4

What is the average GHG per barrel of oil for each emission type?

```
SELECT t.Type_Description,  
AVG(nir.GHG_Per_Barrel_Of_Oil) AS Average_GHG_Per_Barrel  
FROM Type t  
JOIN National_Inventory_Reports nir ON t.Type_ID = nir.Type_ID  
GROUP BY t.Type_Description;  
```

### Query 5

What is the national inventory reports for Alberta province, including the oil type and fact description? 

```
SELECT nir.*,  
t.Type_Description,  
ghgef.Fact_Type_Description  
FROM National_Inventory_Reports nir  
JOIN Type t ON nir.Type_ID = t.Type_ID  
JOIN Green_House_Gas_Emission_Facts ghgef ON nir.Fact_Type_ID = ghgef.Fact_Type_ID  
WHERE nir.Prov_ID = 'P1'; 
```
