select * from city;
/* Q. Select names that donot start or end with vowels, also result with no duplicates*/
select distinct Name from city where substr(Name,1,1) 
not in ('a','e','i','o','u','A','E','I','O','U') and 
substr(Name,-1,1) not in ('a','e','i','o','u','A','E','I','O','U');

/* Q. where claws */
select max(Population) from city;
select distinct Name from city where Population < 10500000 and Population > 5000000; # between a certain range 
select distinct Name from city where Population between 10500000 and 5000000; # between opr
select Name from city where Population <= 1050000; # less than or equal to >=, = 
select distinct CountryCode from city; # set of distinct values 
select * from city where CountryCode like 'S%'; # search a specific pattern 
select distinct Name from city where CountryCode='SYR' and District <> 'Hama'; # not equals to 
select * from city where CountryCode in ('IND','SYR'); # IN command for specifying multiple unique values 

/* Multiple where claws using AND or OR or NOT */

select * from city where CountryCode like 'S%' or CountryCode like 'I%';
select * from city where CountryCode like 'S%' and CountryCode like 'I%';
select * from city where not CountryCode = 'SYR' ;

#Combination of above 

select * from city where CountryCode = 'IND' and (Name = 'Kanpur' or Name = 'Delhi') and CountryCode is not null;
select * from city where Name = 'Delhi' and not Name='kanpur';
select * from city where CountryCode = 'IND';


