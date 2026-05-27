-- CASE in SQL
select 
	name, price,
	case when (price>1000) then 'Expensive'
	when price between 500 and 1000 then 'Moderate'
	else 'cheap'
	end as price_tag from products;

-- But this will just create a virtual data But you can Alter the real data 

-- Step-1 You have to create a new column
Alter table products
Add column price_tag text;

-- Step-2 Update that column using  CASE
Update products
Set price_tag=
CASE 
	When (price>1000) Then 'Expensive'
	When price Between 500 And 1000 Then 'Moderate'
	Else 'cheap'
END;
