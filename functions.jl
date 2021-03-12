# 函式

# ex1
function f(x, y)
    return x + y
end

f(1, 2)
f(f(1, 2), 3)

# ex2
h(x, y)= x + y

h(1, 2)

# 指定輸入及輸出的資料型別
# ex3
function g(x::Int64, y::Int64)::Int64
    return x + y
end

g(1, 2)

# ex4 (error)
g(1.2, 2.3)

# ex5
function g1(x::Real, y::Real)::Real
    return x + y
end

g1(2, 3.45)

# 傳遞參數
# ex6
println(objectid(1))

x = 1
println(objectid(x))

# ex7
function sharing(x)
    println(objectid(x))
    x = 2
    println(objectid(x))
end

sharing(x)
x

# ex8
x = 1
y = 1
println(objectid(1))
println(objectid(x))
println(objectid(y))

# 運算子就是一種函式
1 + 2 + 3 + 4 + 5 + 6
+(1, 2, 3, 4, 5, 6)

# 匿名函式 (anonymous function)
# ex9
a = () -> println("Calling function a.")
a()

# ex10
b = x -> println(x)
b(5)

# ex11
c = (x, y) -> x + y
c(2, 3)

# 數組(Tuples)
# ex12
x = (1, 2, 3)

# ex13
x = 1, 2, 3
x = [1]
x = [2:3]

# ex14
y = (1, 1.2, 'D', "ABC123", true)
typeof(y)

# ex15 (tuple can't change)
x[1] = 3

# ex16 (解開)
a, b, c = x
a
b
c

# ex17 (交換)
b ,a = a, b
a
b

# ex18 (數組是函式用來傳遞參數的資料結構)
h(1, 2)

# ex19 (在for迴圈中無法省略小括弧)
x = [(1, 2), (3, 4), (5, 6)]
for (i,j) in x
    println(i, j)
end

for i,j in x
    println(i, j)
end

# ex20 (return)
function sumproduct(x, y, z)
    return (x + y) * z
end

function sumproduct(x, y, z)
    (x + y) * z
end

# ex21
function shuffle_(x, y, z)
    (y, z, x)
end

a, b, c = shuffle_(1, 2, 3)
a
b
c

# 參數解構(Argument destruction)
# ex22
x = [1, 2, 3]
shuffle_(x...)

# 函式向量化
# ex23
x = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
y = []
for i in x
    push!(y, i^2)
end
y

# ex24
x .^2

# ex25
f(x) = 3x
f.(x)

# ex26
println("請輸入一個正整數 N : ")
input = parse(Int64, readline())
println("您所輸入的數字 N=", input)
println("N! = ", f(input))

function f(n)
    if n==1
        return 1
    else
        #println("test")
        return n * f(n-1)
    end
end