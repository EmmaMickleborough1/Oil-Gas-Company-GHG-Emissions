Insert into Oil_and_Gas_Company values ('C1','TC Energy','2025');  
Insert into Oil_and_Gas_Company values ('C2','Cenovus Energy','2025');  
Insert into Oil_and_Gas_Company values ('C3','Imperial Oil','2025'); 
Insert into Oil_and_Gas_Company values ('C4','Enbridge Inc','2025'); 
Insert into Oil_and_Gas_Company values ('C5','Suncor Energy','2025');  

Insert into Green_House_Gas_Emission_Facts values ('GHG_LGT','Green House Gas Emission Light','C1');
Insert into Green_House_Gas_Emission_Facts values ('GHG_HVY','Green House Gas Emission Heavy','C1'); 
Insert into Green_House_Gas_Emission_Facts values ('GHG_LGT','Green House Gas Emission Light','C2');
Insert into Green_House_Gas_Emission_Facts values ('GHG_HVY','Green House Gas Emission Heavy','C2'); 
Insert into Green_House_Gas_Emission_Facts values ('GHG_LGT','Green House Gas Emission Light','C3');
Insert into Green_House_Gas_Emission_Facts values ('GHG_HVY','Green House Gas Emission Heavy','C3');
Insert into Green_House_Gas_Emission_Facts values ('GHG_LGT','Green House Gas Emission Light','C4');
Insert into Green_House_Gas_Emission_Facts values ('GHG_HVY','Green House Gas Emission Heavy','C4');  
Insert into Green_House_Gas_Emission_Facts values ('GHG_LGT','Green House Gas Emission Light','C5');
Insert into Green_House_Gas_Emission_Facts values ('GHG_HVY','Green House Gas Emission Heavy','C5');  

Insert into Canadian_Provinces values ('Alberta','P1'); 
Insert into Canadian_Provinces values ('Saskatchewan','P2'); 
Insert into Canadian_Provinces values ('Manitoba','P3');
Insert into Canadian_Provinces values ('British Columbia','P4');  

Insert into Emission_Types values ('L1','Conventional Light'); 
Insert into Emission_Types values ('H1','Conventional Heavy'); 

Insert into Green_House_Gas_Emission_Data values (10000000,'2025-2-12',1); 
Insert into Green_House_Gas_Emission_Data values (20000000,'2025-2-13',2); 
Insert into Green_House_Gas_Emission_Data values (30000000,'2025-2-14',3); 
Insert into Green_House_Gas_Emission_Data values (4000000,'2025-2-15',4); 
Insert into Green_House_Gas_Emission_Data values (5000000,'2025-2-16',5);
Insert into Green_House_Gas_Emission_Data values (6000000,'2025-2-17',6); 
Insert into Green_House_Gas_Emission_Data values (70000000,'2025-2-18',7); 
Insert into Green_House_Gas_Emission_Data values (80000000,'2025-2-19',8); 
Insert into Green_House_Gas_Emission_Data values (10000000,'2025-2-20',9); 
Insert into Green_House_Gas_Emission_Data values (12000000,'2025-2-21',10);  

Insert into Production_Crude_Oil values (21000000,99,1); 
Insert into Production_Crude_Oil values (36000000,100,2); 
Insert into Production_Crude_Oil values (45000000,101,3); 
Insert into Production_Crude_Oil values (25000000,102,4); 
Insert into Production_Crude_Oil values (33000000,103,5); 
Insert into Production_Crude_Oil values (12000000,104,6);
Insert into Production_Crude_Oil values (14000000,105,7); 
Insert into Production_Crude_Oil values (37000000,106,8); 
Insert into Production_Crude_Oil values (27000000,107,9);
Insert into Production_Crude_Oil values (50000000,108,10);  

Insert into National_Inventory_Reports values ('P1',99,'L1','GHG_LGT','C1',2.1);
Insert into National_Inventory_Reports values ('P1',100,'H1','GHG_HVY','C1',1.8); 
Insert into National_Inventory_Reports values ('P2',101,'L1','GHG_LGT','C2',1.5);
Insert into National_Inventory_Reports values ('P2',102,'H1','GHG_HVY','C2',6.3);
Insert into National_Inventory_Reports values ('P3',103,'L1','GHG_LGT','C3',6.6); 
Insert into National_Inventory_Reports values ('P3',104,'H1','GHG_HVY','C3',2.0); 
Insert into National_Inventory_Reports values ('P4',105,'L1','GHG_LGT','C4',0.2);
Insert into National_Inventory_Reports values ('P4',106,'H1','GHG_HVY','C4',0.5);
Insert into National_Inventory_Reports values ('P4',107,'L1','GHG_LGT','C5',2.7); 
Insert into National_Inventory_Reports values ('P4',108,'H1','GHG_HVY','C5',4.2); 


