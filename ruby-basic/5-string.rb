# ruby的字符串

# 单引号使用
puts 'single quotes'         #"single quotes" 
puts 'single\nquotes'        #单引号中，\n不会转义为换行符,会打出 "single\\nquotes"
puts 'single \'quotes\''     #单引号中使用单引号'，需要反斜杠\'进行转义
puts 'single quotes #{ARGV}' #单引号中不能使用#{}，计算表达式的值。

# 双引号使用
puts "double quotes"         #double quotes
puts "double\nquotes"        #双引号中的换行符，\n,会被转义为换行。
puts "double quotes #{ARGV}"        #双引号中可以解析#{}里面的表达式。

# 多行字符串
print <<'eos' #一般使用 end of string 简称
first line 
second line
eos
