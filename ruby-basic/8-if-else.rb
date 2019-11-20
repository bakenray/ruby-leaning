# ruby的if语句   
a = 5

# 单结果
if a>=5 then p 'number is big' end  

# 多结果
if a>=5 then p 'number is big' else p 'number is small' end

# 自动返回值
p(if a>5 then 'number is big' else 'number is small' end)

# 多行条件
p(
    if a>7 
        'big' 
    elsif a>4 
        'middle' 
    else 
        'small' 
    end
)

# 三元运算符
temp_1 = if a>5 then 'big' else 'small' end
temp_2 = a>5 ? 'big' : 'small'

p temp_1,temp_2
