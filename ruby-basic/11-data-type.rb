# ruby的数据类型
# ruby中一切皆对象，其他数据类型都是对象。使用.class查看。

p 1234.class            #整数的 Integer/Numeric 对象
p 12.34.class           #浮点数 Float对象 
p '1234'.class          #字符串 String对象 
p [1,2,3,4].class       #数组  Array对象 
p /1,2,3,4/.class       #正则表达式  Regexp对象 

#时间  Time对象 
#文件  File对象 
#符号  Symbol对象 
#异常  EXception对象 
#散列  Hash对象 


# 判断两个值是否相等 ,使用 .equal?
a = 1
b = 2
p b.equal? a