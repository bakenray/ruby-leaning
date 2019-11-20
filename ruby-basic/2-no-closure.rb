#ruby默认没有闭包，函数就使用不了函数外部的自由变量。
#可以使用其他的语法可以实现闭包

free_variable = 'free_variable'

def ruby_method
    p free_variable
end
ruby_method

#undefined local variable or method `free_variable' for main:Object...
#发现会报错，因为函数获取不到外部的变量。


# 全局变量是可以被函数使用功能的。
# $global_variable = 'global_variable'
# def ruby_method_2
#     p $global_variable
# end
# ruby_method_2