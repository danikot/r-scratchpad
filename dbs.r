require(RODBC)

db <- odbcConnect("QV Training")
db

ordersTable <- sqlQuery(db,"SELECT * FROM Orders", stringsasFactors=FALSE)
head(ordersTable)
detailsTable <- sqlQuery(db,"SELECT * FROM [Order Details]", stringsasFactor)

longQuery <- "SELECT * FROM Orders, [Order Details] WHERE Orders.OrderID=[Order Details].OrderID"
longQuery
joinedTable <- sqlQuery(db,longQuery, stringsAsFactors=FALSE)
head(joinedtable)

#none of it works