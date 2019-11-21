# 字符串类中，绑定一个方法

# class String
#     def to_words
#         self.gsub(/[^\da-zA-Z\s]/,'')
#     end
# end

# require('test/unit')
# class ToWordTest <Test::Unit::TestCase
#     def test_1
#         assert_equal 'bakenray is so handsome','#bakenray# is* s%o hand$some?'.to_words  
#     end
# end

# 把to_words方法添加到String类中，后面就可以在所有字符串实例中调用这个to_words方法。
# p 'h%el%lo w%or$ld@'.to_words





# 执行多次class声明
# 7.times do
#     class C
#         p "class declarations"
#     end
# end

#执行后打印出7个 "class declarations"
#那么是否可以理解为这里声明了7个类呢？ 看下一个





# 声明多个相同类名的类
# class X
#     def a;'a';end
# end
# class X
#     def b;'b';end
# end

# obj = X.new
# p obj.a     #a
# p obj.b     #b
 
# a,b,c都打印出来了，说明多个相同的类定义，不同的内容会合并起来。
# 第二次以后的类声明，也叫做 [打开类] open class
# ruby中的class更像是一个作用域的标记，而不是声明语句
# 因此，第一个例子中，实际上是打开了String类，然后添加to_words方法




# 实例对象和类的属性方法
class MyClass
    def initialize  #每个类，都有一个初始化方法，如果不生命，默认是空。
        @v = 1      # @v 相当于当前class的 this.v
    end
    
    def my_method
        @v +=1
    end
end

obj = MyClass.new   #实例化时，会自动调用初始化方法。

p obj.class                 #obj实例的类，当然就是 MyClass
p obj.my_method             #执行obj中的my_method方法，执行后返回 2
p obj.instance_variables    #打印实例对象的所有属性 [:@v]    
# p obj[:@v]                  #通过中括号[]是获取不到 实例对象的属性的。
p obj.methods               #实例对象的所有方法,很多...
p obj.methods.grep(/my/)    #搜索实例对象的执行方法 [:my_method]

p MyClass.instace_methods   #类的实例方法，其实也就是obj.methods

#  从上面的例子可以看出，在ruby中
# 对象的实例变量储存在自身
# 对象的实例方法储存在它的类身上
