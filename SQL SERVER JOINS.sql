Create table #EmployeeTable(
EmployeeID int,
EmployeeName varchar(20),
EmployeeAge varchar(20),
EmployeeCity varchar(20)
)

-------------------------------------------------------------------------------------------------------

Create table #ManagerTable(
EmployeeID int,
ManagerID int,
ManagerName varchar(20),
ManagerAge varchar(20),
ManagerDepartment varchar(20)
)

-------------------------------------------------------------------------------------------------------

Insert into #EmployeeTable(EmployeeID,EmployeeName,EmployeeAge,EmployeeCity)
Values(1,'BOB',39,'Boston')
Insert into #EmployeeTable(EmployeeID,EmployeeName,EmployeeAge,EmployeeCity)
Values(2,'Tom',40,'Missouri')
Insert into #EmployeeTable(EmployeeID,EmployeeName,EmployeeAge,EmployeeCity)
Values(3,'Max',50,'Kentucky')
Insert into #EmployeeTable(EmployeeID,EmployeeName,EmployeeAge,EmployeeCity)
Values(4,'Harman',30,'Arizona')

-------------------------------------------------------------------------------------------------------

Insert into #ManagerTable(EmployeeID,ManagerID,ManagerName,ManagerAge,ManagerDepartment)
Values(1,100,'Art',60,'Arizona')
Insert into #ManagerTable(EmployeeID,ManagerID,ManagerName,ManagerAge,ManagerDepartment)
Values(3,102,'Rowe',65,'Arizona')
Insert into #ManagerTable(EmployeeID,ManagerID,ManagerName,ManagerAge,ManagerDepartment)
Values(2,103,'Bill',68,'Arizona')
Insert into #ManagerTable(EmployeeID,ManagerID,ManagerName,ManagerAge,ManagerDepartment)
Values(5,104,'Doerr',70,'Arizona')

-------------------------------------------------------------------------------------------------------

Select * from #EmployeeTable

Select * from #ManagerTable

-------------------------------------------------------------------------------------------------------
--Inner join to retrive matching rows beween two tables based on one common field EmployeeID

Select * from #EmployeeTable e inner join
#ManagerTable m on e.EmployeeID=m.EmployeeID


-------------------------------------------------------------------------------------------------------
--Left join to retrive left rows and matching  beween two tables based on one common field EmployeeID

Select * from #EmployeeTable e left join
#ManagerTable m on e.EmployeeID=m.EmployeeID

-------------------------------------------------------------------------------------------------------
--Right join to retrive right rows and matching beween two tables based on one common field EmployeeID


Select * from #EmployeeTable e right join
#ManagerTable m on e.EmployeeID=m.EmployeeID

-------------------------------------------------------------------------------------------------------
--Full Outer Join to retrive all rows beween two tables based on one common field EmployeeID


Select * from #EmployeeTable e full  join
#ManagerTable m on e.EmployeeID=m.EmployeeID

-------------------------------------------------------------------------------------------------------
--Query  to retrive rows in left table but not matching rows 


Select * from #EmployeeTable e left  join
#ManagerTable m on e.EmployeeID=m.EmployeeID
where m.EmployeeID is NULL

Select EmployeeID from #EmployeeTable
where EmployeeID not in (Select EmployeeID from #ManagerTable)

-------------------------------------------------------------------------------------------------------
--Query  to retrive rows in right table but not matching rows 


Select * from #EmployeeTable e right  join
#ManagerTable m on e.EmployeeID=m.EmployeeID
where e.EmployeeID is NULL


-------------------------------------------------------------------------------------------------------
--Query  to retrive rows not common row in two tables

Select * from #EmployeeTable e full  join
#ManagerTable m on e.EmployeeID=m.EmployeeID
where e.EmployeeID is NULL or m.EmployeeID is NULL

