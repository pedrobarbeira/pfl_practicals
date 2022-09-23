--Exercise 1
testaTriangulo::Float->Float->Float->Bool
testaTriangulo a b c=(a+b>c)&&(b+c>a)&&(a+c>b)

--Exercise 2
areaTriangulo::Float->Float->Float->Float
areaTriangulo a b c=sqrt(s*(s-a)*(s-b)*(s-c))
 where s=(a+b+c)/2

--Exercise 3
metades []=([], [])
metades (x:xs)=(take(length(x:xs)`div`2)(x:xs), drop(length(x:xs)`div`2)(x:xs))

--Exercise 4.a
myFirstLast::[a]->a
myFirstLast (x:xs)=head(reverse(x:xs))
mySecondLast::[a]->a
mySecondLast (x:xs)=head(drop(length(x:xs)-1)(x:xs))
--Exercise 4.b
myFirstInit::[a]->[a]
myFirstInit (x:xs)=reverse(tail(reverse(x:xs)))
mySecondInit::[a]->[a]
mySecondInit (x:xs)=take(length(x:xs)-1)(x:xs)

--Exercise 5.a
binom::Integer->Integer->Integer
binom n k = product[1..n]`div`(product[1..k]*product[1..(n-k)])
--Exercise 5.b
binom'::Integer->Integer->Integer
binom' n k |k<n-k=product[n-k+1..n]`div`product[1..k]
           |otherwise=product[k+1..n]`div`product[1..n-k]

--Exercise 6
raizes::Float->Float->Float->(Float,Float)
raizes a b c=((-b+sqrt(disc))/2*a,(-b-sqrt(disc))/2*a)
             where disc=(b*b-4*a*c)

--Exercise 7
--a) [Char]
--b) [Char,Char,Char]
--c) [(Bool, Char)]
--d) ([Bool], [Char])
--e) [[a]]
--f) [a]

--Exercise 8
--a) segundo::[]->a
--b) trocar::(a,a)->(a,a)
--c) par::a->a->(a,a)
--d) dobro::Num->Num
--e) metade::Num->Num
--f) minuscula::Char->Bool
--g) intervalo a->Bool
--h) palindromo::[]->Bool
--i) twice::a->a

--Exercise 9
classifica::Int->String
classifica x|x>=0&&x<=9="reprovado"
            |x>=10&&x<=12="suficiente"
            |x>=13&&x<=15="bom"
            |x>=16&&x<=18="muito bom"
            |x>=19&&x<=20="muito bom com distincao"
            |otherwise="nota invalida"

--Exercise 10
classificaImc::Float->Float->String
classificaImc p h|imc<18.5="baixo peso"
                 |imc>=18.5&&imc<25="peso normal"
                 |imc>=25&&imc<30="excesso de peso"
                 |imc>=30="obesidade" 
                  where imc=p/(h*h)       

--Exercise 11
          
