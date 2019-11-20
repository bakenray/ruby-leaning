# 常量，使用全大写的字母来声明
CONSTANT_1 = 'CONSTANT_1'
def ruby_method
    p CONSTANT_1    #自定义的常量
    p RUBY_VERSION  #ruby 自带常量，查看ruby版本
    p ARGV          #ruby 自带常量，ruby命令执行时带的参数
end
ruby_method