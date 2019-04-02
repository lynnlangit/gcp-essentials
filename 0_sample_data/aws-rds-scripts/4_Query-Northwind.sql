-- 1. Get subtotal for each order.
select OrderID, 
    format(sum(UnitPrice * Quantity * (1 - Discount)), 2) as Subtotal
from `Order Details`
group by OrderID
order by OrderID;

-- 2. Get sales by year for order subtotals
select distinct date(a.ShippedDate) as ShippedDate, 
    a.OrderID, 
    b.Subtotal, 
    year(a.ShippedDate) as Year
from Orders a 
inner join
(
    select distinct OrderID, 
        format(sum(UnitPrice * Quantity * (1 - Discount)), 2) as Subtotal
    from `Order Details`
    group by OrderID    
) b on a.OrderID = b.OrderID
where a.ShippedDate is not null
    and a.ShippedDate between date('1996-12-24') and date('1997-09-30')
order by a.ShippedDate;