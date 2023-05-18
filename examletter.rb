print "enter the grade point"
grade=gets.chomp.to_i
reslut =case grade
when 90.100 then "Letter grade A"
when 80...90 then "letter grade B"
when 70...80 then "letter grade C"
when 60...70 then "letter grade D"
when 50...60 then "letter grade E"
when 0...50 then "letter grade F"
else"invalid inpuut"
end

puts reslut



