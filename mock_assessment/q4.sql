-- How many products are available to the customer Blauer See Delikatessen from their own country Germany?
--

select * from customers
where CustomerName = 'Blauer See Delikatessen'
;

select * from Suppliers
where country = 'Germany';

select count(*) from Products
where supplierID in (select SupplierID from Suppliers
where country = 'Germany')
;