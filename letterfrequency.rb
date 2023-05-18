def letter(text)
    chars=('a'..'z').to_a+('A'..'Z').to_a
    frequency={}
     text.each_char do |char|
        if chars.include?(char)
            unless frequency.key?(char)
                frequency[char]=1
            else
                frequency[char]+=1
            end
        end
    end
    return frequency

end
puts "letter frequency"
print "text :"
text=gets.chomp
reslut=letter(text.upcase).sort
puts reslut
for key,value in reslut
    puts "#{key}=>#{value}"
end