def search(key)
    reslut={}
    Dir.glob("*.txt") do |filename|
        
        f=File.open(filename)
        f.each_with_index do |line,index|
            if line.include?(key)
                reslut[index+1]=filename
            end
        end
        f.close
    end
    reslut
end
         

puts "seach a files"
print "Key :"
key=gets.chomp
reslut=search(key)
if reslut.length>0
    for key,value in reslut
        puts "Filename #{value} Linenumber:#{key}"
    end
else
    puts"Not found!"
end