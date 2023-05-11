data Ticket = Normal Int | Discounted Int Double

getPrice :: Ticket -> Double
getPrice (Normal price) = price
getPrice (Discounted price discount) = price * discount