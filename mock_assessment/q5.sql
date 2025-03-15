select count(*), o.ShipperID , s.ShipperName
from Orders o
JOIN shippers s ON o.shipperID = s.shipperID
group by o.shipperID
;