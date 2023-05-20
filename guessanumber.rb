def number(n)
    cs = rand(1..n)
    puts "Enter a number between 1 and #{n}:"
    puts "#{cs}"
    
    num = gets.chomp.to_i
  
    while cs != num
      if cs >num
        puts "The number is too low."
      elsif cs < num
        puts "The number is too high."
      end
  
      puts "Try again:"
      num = gets.chomp.to_i
    end
  
    puts "Congratulations! You found the number #{num}."
  end
  
  number(10)