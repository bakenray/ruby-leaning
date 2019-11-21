# 调用方法的两种写法:
    # obj.my_method('hello')
    # obj.send(:my_method,'hello')

# 使用send调用方法的好处是，可以实现动态派发，还可以调用私有方法

# 动态调用私有方法 ,send
class Notification
    def notify(which)
        send "notify_#{which}"
    end

    private

    def notify_wechat
        p 'notify_wechat'
    end
    def notify_email
        p 'notify_email'
    end
    def notify_phone
        p 'notify_phone'
    end
    def notify_all
        notify_wechat
        notify_email
        notify_phone
    end
end

notification = Notification.new
notification.notify('all')


# 还可以动态定义方法,
class MyClass
    dynamic_method = :my_method          #方法名设置为my_method
    define_method:dynamic_method do |n|  #my_method是可以动态定义的，设置为一个变量，就可以动态定义方法
        n * 3
    end
end

require('test/unit')
class MyClassTest < Test::Unit::TestCase
    def test_1
        obj = MyClass.new
        assert_equal 6,obj.dynamic_method(2)
    end
end

# 动态定义的好处是：可以在运行时决定方法名，而不是在写代码时
# 这个在批量创建方法时非常有用