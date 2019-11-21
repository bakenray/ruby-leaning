# 类中可以定义的内容

# 最常见的就是定义一个常量。
# 大写字母开头即为常量，如果违反规定，就会有警告

# 常量的作用域
Const = 'root const' 

module MyModule     #Module 就是低配版的类
    Const = 'outer const'
    class MyClass
        Const = 'inner const'
        p Module.nesting       #当前作用域层级结构
    end
    p Const             #当前作用域的常量， 'outer const'
    p MyClass::Const    #MyClass 里的常量， 'inner const'
end

p Const                     #最外层的常量， 'root const'
p MyModule::Const           #MyModule里的常量  'outer const'
p MyModule::MyClass::Const  #MyClass里的常量 'inner const' 
p ::Const                   #双冒号，可直接打出最外层的常量，  'root const'

# 打出所有的常量
# p Module.constants          #所有顶层的常量（全局的），很多...
# p Module.constants[0..3]          #可以取其中的几个
p MyModule.constants        #可以得到MyModule内部的所有一级常量 [:Const,:MyClass]

#MyModule 是Module的一个实例
#MyModule.constants是实例方法，Module.constants是类方法，所以他们的作用域不同。
# 打印出当前作用域的层级结构（任何地方）  Module.nesting