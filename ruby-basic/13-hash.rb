# ruby的散列，是由Hash类构造出来的对象

# 创建散列
person_1 = {name:'bakenray',age:26,weight:130,height:170}
p person_1  
#{:name=>"bakenray", :age=>26, :weight=>130, :height=>170}
# 这里的:name、：age等，都是symbol符号，不是字符串

# 使用Hash类 构造散
person_2 = Hash.new
person_2['name'] = 'bakenray'
person_2['age'] = 26
person_2['weight'] = 130
person_2['height'] = 170

p person_2  
#{"name"=>"bakenray", "age"=>26, "weight"=>130, "height"=>170}
#这里的key值，是字符串，没有设置为symbol。也可以这样 xx[:yy]=zz 设置为symbol

# 散列中，获取属性值，不能使用点操作，只能用方括号获取
# 因为点操作，在ruby中，后面接的是方法，而不是属性值


# 打印出散列的keys
p person_1.keys    #[:name, :age, :weight, :height]
#key值都是symbol符号，symbol可以简化理解为轻量的字符串，功能更简洁


# symbol和字符串转换
:name.to_s      #可以把symbol转换为字符串
'name'.to_sym   #把字符串转化为symbol符号

# 遍历散列
person_1.each do |key,value|
    p "key:#{key},value:#{value}"
end

#散列获取值
#person_1.name       #获取不到,
#person_1['name']    #获取不到
person_1[:name]     #可以获取
# 只能使用persion[:key] 符号的方式。不能使用点符号或者字符串获取到


# 散列添加方法
def hello
    p 'hello!'
end
person_3 = {name:'bakenray',age:26}

person_3[:hello] = hello   #方法添加失败，会得到 字符串'hello'
#因为 hello 会默认执行，执行后的结果是 'hello',然后再赋值，就得到 'hello'


# 散列赋值一个方法，可以使用 lambda表达式
person_3[:hello] = lambda { p 'hello!'}    #省去了声明函数的部分
person_3[:hello].call()                    #使调用时，就得使用call调用
