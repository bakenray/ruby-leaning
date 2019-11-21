# 祖先链
class MyClass
    def my_method
        'my_method'
    end
end

class MySubClass < MyClass;end  #小于号<,表示继承

obj = MySubClass.new
p obj.my_method             #'my_method'
p MySubClass.ancestors      #得到祖先链 [MySubClass, MyClass, Object, Kernel, BasicObject]

#祖先链中的Kernel又是什么？没见过。
# Kernel是一个模块，说明祖先链中，除了类，还有模块