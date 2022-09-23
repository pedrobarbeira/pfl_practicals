--Exercise 1
testaTriangulo :: Float -> Float ->Float -> Bool
testaTriangulo a b c = (a+b > c) && (b+c > a) && (a+c > b)


--Exercise 2
areaTriangulo :: Float -> Float -> Float -> Float
areaTriangulo a b c = sqrt(s*(s-a)*(s-b)*(s-c))
 where s=(a+b+c)/2


--Exercise 3
metades [] = ([], [])
metades (x:xs) = (take (length (x:xs) `div` 2) (x:xs), drop (length(x:xs)`div`2) (x:xs))


--Exercise 4.a
myFirstLast :: [a] -> a
myFirstLast (x:xs) = head(reverse (x:xs))

mySecondLast :: [a] -> a
mySecondLast (x:xs) = head ( drop (length (x:xs) - 1) (x:xs) )


--Exercise 4.b
myFirstInit :: [a] -> [a]
myFirstInit (x:xs) = reverse( tail (reverse (x:xs) ) )

mySecondInit :: [a] -> [a]
mySecondInit (x:xs) = take (length(x:xs)-1)(x:xs)


--Exercise 5
binom::Integer->Integer->Integer
binom n k = product [1..n] `div` (product[1..k]*product[1..(n-k)])
