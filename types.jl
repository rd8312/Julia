# 型別 (Types)

# ex1
3::Int64

# ex2
3.0::Int64

# ex3
x = 3.0::Int64

# 複合型別 (Composite type)
# ex4
struct Time
    hour::Int64
    minute::Int64
    second::Int64
end

time1 = Time(10, 5, 0)
time1.hour
time1.hour = 5

# ex5
mutable struct Time2
    hour::Int64
    minute::Int64
    second::Int64
end

time2.hour = "5.3"
time2 = Time2(10, 5, 0)
time2.hour = 5
time2.hour = 5.3

# 內部建構子 (Inner construction)
# ex6
mutable struct Time3
    hour::Int64
    minute::Int64
    second::Int64

    Time3(h, m) = new(h, m, 0)
end

time3 = Time3(3, 4)
time3 = Time3(3, 4, 0)

# 參數化型別 (Parametric type)
# ex7
Matrix{Int64}(undef, 8, 8)

# ex8
struct Box{T}
    element::T
end

box = Box(8)
box = Box(5.3)
box = Box(false)
box = Box{Float64}(5.3)