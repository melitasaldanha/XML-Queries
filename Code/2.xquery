for $prod in distinct-values(doc("purchaseorders.xml")//item/partid)
let $price := doc("products.xml")//product[@pid = $prod],
    $quant := doc("purchaseorders.xml")//item[partid = $prod]
order by $prod
return <totalcost partid = "{$prod}">{sum($quant/quantity)*$price/description/price}</totalcost>