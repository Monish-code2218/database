use OnlineShopping

Select Name, Product.ProductName, Price
From Product

inner join (
Select Vendor.Name, ProductID,Price
From Vendor

inner join (
Select vendorID, ProductID,Price
From VendorProduct

inner join (
Select TOP 3 OrderedProduct.VendorProductID, sum(Quantity) as OrderedQuantity
From OrderedProduct Group By VendorProductID Order By orderedquantity Desc) vpfk on vpfk.VendorProductID = VendorProduct.VendorProductID)
vpid on vpid.VendorID = vendor.VendorID)
vpvp on vpvp.ProductID = Product.ProductID