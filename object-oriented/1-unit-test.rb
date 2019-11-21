# 首先安装单元测试库，test-unit

#声明to_words函数 把不是字母和数字的东西，变成空字符串
def to_words(s)
    s.gsub(/^\da-zA-Z\s/,'')    #gsub类似js中的replace，匹配正则，然后替换
end

# 引入单元测试库,声明一个类
require('test/unit')
class ToWorldTest < Test::Unit::TestCase
    def test_1
        assert_equal 'bakenray is so handsome',to_words('#bakenray# is* s%o hand$some?')
    end
end
