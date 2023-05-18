print("enter the rnumber")
n=gets.chomp.to_i

fibprev=0
fib=1

while fib<=n
    puts fib
    # temp = fib
    # fib=fib+fibprev
    # fibprev=temp
    fibprev,fib=fib,fib+fibprev
end
