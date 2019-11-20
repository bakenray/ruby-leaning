
#.times循环

#多行循环时，使用 do end 
7.times do
    p 'loop is doing now！'
end

# times循环,也可以使用花括号包括
7.times {
    p 'loop is doing now！'
}

# times循环，获取索引,这里定义为 i
7.times do |i|
    p "this is no.#{i}"
end

7.times {|i| p "this is no.#{i}"}




# each循环

# 数组的each循环
arr = ['1','2','3','4']

arr.each do |i|
    p i
end

# 构造类数组
p (1..7).class  #输出 Range

(1..7).each do |i|  #执行1-7的循环输出
    p i
end




# for循环，相对使用较少，each使用场景较大。

# for循环1..7  
for i in 1..7 do   #do可以缺省
p i  
end

# for循环数组, 省略do
arr = ['1','2','3','4','5']
for i in arr 
    p i
end



# while/until循环

# while循环 ，当符合条件时，循环执行
i = 1
while i<=7
    p i
    i+=1
end

# until循环 ，与while是相反，当不符合条件时循环执行
j = 1
until j>7
    p j
    j+=1
end



# loop循环，无限循环,运行谨慎
loop do
    p 'ruby loop!'
end

# 跳出循环
# break退出所有循环
# next退出当前循环，进入下一次循环
