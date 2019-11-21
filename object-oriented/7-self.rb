# 类的执行过程
class MyClass
    def testing_self
        @var = 10
        my_method
        self
    end
    def my_method
        @var +=1
    end
end

# obj_1 = MyClass.new
# p obj_1.testing_self
#这次调用中 @var 是obj1 的 @var ，my_method 是obj1的my_method,self 就是obj1
#<MyClass:0x0000000004ee4b08 @var=11>


# obj_2 = MyClass.new
# p obj_2.testing_self
#这次调用中 @var 是obj2 的 @var ，my_method 是obj1的my_method,self 就是obj2
#<MyClass:0x0000000004ee49c8 @var=11>



# 顶级作用域的self是什么？
# p self      #main,  main又是什么？
#Ruby开始执行程序时，会创建一个对象，这个对象自定义了to_s和inspect方法，所以打印出来一个main

# class Temp
#     def to_s
#       'baken'
#     end
#     def inspect
#       'ray'
#     end
#   end
  
#   p Temp.new

#   顶级作用域的self就是一个对象，main。



# 类定义中的self
class MyClass
    p self #就是当前类
    def my_method
        p self          #self是接收者（对象）
    end
end

obj = MyClass.new
obj.my_method       #<MyClass:0x000000000511faa8>