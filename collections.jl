# 陣列

# ex1 (空陣列)
x = []

# ex2 (指定型別)
Any[]
Int[]

# ex3
x = [1, 2, 3]
x = [1, 1.2]

# ex4
Int8[1, 2, 3, 4]
x = Int8[1,2]

# ex5
x = [1, 1.2]
x[1]
x[2]

# ex6
length(x)

# ex7
x = [6.0, 3.2, 7.6, 0.9, 2.3]
x[1:2]
x[3:length(x)]
x[3:end]
x[end-1]

# ex8 (間隔取值)
x = [6.0, 3.2, 7.6, 0.9, 2.3]
x[1:2:end]

# ex9 (計算平均)
x = [6.0, 3.2, 7.6, 0.9, 2.3]
total = 0

for i=1:5
    global total += x[i]
end

avg = total / 5

println("全班平均成績:", avg)