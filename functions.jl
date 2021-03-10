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

# 匿名函式
