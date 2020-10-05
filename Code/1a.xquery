for $p in /PurchaseOrders/PurchaseOrder[lower-case(@Status) = "shipped" ]
where $p/item[contains(partid, '100-201-01')]
return data($p/@PoNum)