add=lambda do |num1,num2|
    num1+num2
end
subtract=lambda do |num1,num2|
    num1-num2
end
multipy=lambda do |num1,num2|
    num1*num2
end
divide=lambda do |num1,num2|
    num1/num2
end
def manager(function)
    print("number 1:")
    num1=gets.chomp.to_i

    print("number 2:")
    num2=gets.chomp.to_i
    reslut=function.call(num1,num2)
    puts "Result=#{reslut}".center(50,"-")
    end


begin
    puts "a)ADD"
    puts "b)subtract"
    puts "c)multipy"
    puts "d)divide"
    
    puts "quit"
    
    print "select (a/b/c/d/q):"
    choice=gets.chomp
 
    case choice
    when 'a' then manager add
    when 'b' then manager subtract
    when 'c' then manager multipy
    when 'd' then manager divide
    end

end while choice !='q'