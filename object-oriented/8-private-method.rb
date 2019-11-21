# ruby中，方法分为三种：public() 公开方法、private() 私有方法、protected() 包裹方法
class MyClass
    def public_method
        'MyClass#public_mehod'
    end

    def public_call_privare
        self.private_method_1
    end

    def public_call_private_without_self
        private_method_1
    end

    private # 声明私有方法，需要在之前声明一个 private,private上面的是共有方法，下面的就是私有方法。

    def private_method_1
        'MyClass#private_mehtod_1'
    end

    def private_method_2
        'MyClass#private_method_2'
    end
end

obj = MyClass.new
p obj.public_method                       #'MyClass#public_mehod'
# p obj.private_method_1                  #在实例中调用私有方法，找不到这个方法，只能在类中的调用。
p obj.public_call_private_without_self    #不使用self，可以在共有方法中调用私有方法

# 私有方法的调用：
# 私有方法，必须在对象所在的类中调用，作用域小。
# 不能在前面加self，字样（只能隐式执行self）