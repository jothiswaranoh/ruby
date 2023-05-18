# def checker(word)
#     if word.length <=1
#         return true
#     elsif word[0]!=word[-1]
#         return false
#     else
#         checker(word[1,word.length-2])
#     end
# end
def checkerinbu(word)
    word==word.reverse
end
def checker(word)
    return true if word.length <=1 
    return false if word[0]!=word[-1]
    checker(word[1,word.length-2])
 
end


puts "palidrome words"
print "word :"
word =gets.chomp
puts "its palidrpme #{checkerinbu(word)}"