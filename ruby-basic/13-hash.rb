# ruby的散列，是由Hash类构造出来的对象

# 创建散列
person_1 = {name:'bakenray',age:26,weight:130,height:170}
p person_1  
#{:name=>"bakenray", :age=>26, :weight=>130, :height=>170}
# 这里的:name、：age等，都是symbol符号，不是字符串。

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
# 因为点操作，在ruby中，后面接的是方法，而不是属性值。

# 打印出散列的keys