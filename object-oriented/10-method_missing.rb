# class MyClass;end   #声明一个空类
# obj = MyClass.new
# obj.xxx     #写代码时不会报错，运行时才会报错，undefined method 'xxx' for...

# #  因为MyClass及其祖先链上没有xxx方法
# #  最后Ruby只要调用BaseObject#method_missing方法
# obj.send(:method_missing,:xxx)  #其实就是调用这个方法


# 如果在MyClass里面，覆盖method_missing,就可以在没有这个方法时，自定义一些方法功能
class MyClass_2
    def method_missing(method,*args)
        p "method: #{method} , args:#{args}"
        p "can not find this method bro!"
    end
end

obj = MyClass_2.new
obj.xxx('args1','args2','args3','args4')

