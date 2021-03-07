### if 條件判斷

# ex1
x = 0
y = 5

if x < y
    println("x is less than y")
end

# ex2
x = rand(1:10)
y = 5

if x < y
    println("x is less than y")
else
    println("x is not less to y")
end

# ex3
x = rand(1:10)
y = 5

if x < y
    println("x is less than y")
elseif x > y
    println("x is greater than y")
else
    println("x is equal to y")
end

# ex4 (短路邏輯)
if 3 > 5 && 5==5
    println("This is not going to be printed.")
end

# ex5 (猜拳遊戲)
# 1:剪刀 , 2:石頭, 3:布
x = 2
y = 3

if x == 2
    if y == 3
        println("y wins!")
    end
end

if x == y
    println("End in a draw!")
end

# (nested)
if x == 1
    if y == 2
        println("y wins!")
    elseif y ==3
        println("x wins!")
    end

elseif x == 2
    if y == 1
        println("x wins!")
    elseif y == 3
        println("y wins!")
    end

elseif x == 3
    if y == 1
        println("y wins!")
    elseif y == 2
        println("x wins!")
    end
end

# ex6 (數字比大小) unfinished
println("請輸入3個數字:")
n1 = readline()
n1 = parse(Int64, n1)

n2 = readline()
n2 = parse(Int64, n2)

n3 = readline()
n3 = parse(Int64, n3)

printed("您所輸入的數字分別為:",n1,n2,n3)