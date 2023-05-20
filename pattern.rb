
puts "number:"
num = gets.chomp.to_i
z=90
array=[]
m=num

while num>=1 do
    
    array[num-1]=z.chr
 
     num=num-1
     z=z-1;

end
#     array.each do |user|
    #         puts "#{user}"
    #   end
# for
# puts "#{array[0]}"
  
# for len in array do
#     for js in len do
#         puts "#{len}"
         
#        end
#     end
#   array=1,2,3,4,5
#   puts array.inspect

# for key,value in array
#     for k in array
#     print "#{value}"
# end
# puts "#{value} "
# end


print array[0]

(1...m).each do |i|
    puts
  (1..i).each do |j|
    print array[i]
  end
  print array[i - 1]
end
