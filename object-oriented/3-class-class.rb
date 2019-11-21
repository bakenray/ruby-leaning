# 字符串类
# p String.superclass         #Object
# p Object.superclass         #BasicObject
# p BasicObject.superclass    #nil

# 可以看出，BasicObject 是类的源头，是类的根对象
# 把String当做类的时候，就研究它的父类
# 把Stirng当做对象的时候，就研究他是由什么类构造的。





# 数组类
# p Array.superclass      #Object
# p Array.is_a? Class      #true





# 自定义类
class MyClass;end
# p MyClass.superclass    #Object
# p MyClass.is_a? Class   #true

# 字符串类、数组类、自定义类等所有类，都是Class类的实例，或者说，所有的类的构造者都是Class
# 但是每个类的 父类/超类 各不相同





# Class类的构造者和父类

# Class的实例
# p Class.class        #Class
# p Class.is_a? Class  #true

# 也就是说，Class是Class的示例，有点不好理解。
# 需要记住的是，所有的类都是Class的实例


# Class 的父类
p Class.superclass  #Module

# Class的父类是一个Module，Module又是什么呢？
# 可以初略的理解为，Module 是低配版的Class，而Class是高配版的Module

