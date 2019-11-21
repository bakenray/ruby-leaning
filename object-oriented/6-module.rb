# 在类的 上面 加一个模块
module M1
    def my_method
        'M1#my_method()'    # 井号 # 表示实例方法。点号 . 表示类方法
    end
end

class C1
    include M1      #相当于 C1<M1  但是不能继承一个模块，只能继承一个类。
end

class D1 < C1; end    #D1 继承 了 C1

# p D1.ancestors         #[D1, C1, M1, Object, Kernel, BasicObject]

#又出现了Kernel,但是我们并没有继承过这个Kernel，怎么来的呢？
# 是因为，Object include 了 Kernel 



# 在类的  下面  加一个模块
module M2
    def my_method
        'M2#my_method()' 
    end
end

class C2
    prepend M2      #相当于 M2 < C2 
end

class D2 < C2; end    

p D2.ancestors      # [D2, M2, C2, Object, Kernel, BasicObject]

# prepend和include类似，一个是在祖先链当前模块的下面加，一个是在上面加。
# 模块是一个轻量的类，主要用于引入一些公共的方法或者工具函数
