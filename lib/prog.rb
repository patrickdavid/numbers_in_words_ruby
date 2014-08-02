def number_text(number)
  
  my_number = number.to_s.split('')
  answer = []
  
  singles = {"nine"=>9, "eight"=>8, "seven"=>7, "six"=>6, "five"=>5, "four"=>4, "three"=> 3,"two" => 2, "one" => 1}
  
  tens ={"ninety" => 9, "eighty" => 8, "seventy" => 7, "sixty" => 6, "fifty" => 5, "forty" => 4, "thirty" => 3, "twenty" => 2, "ten" => 1}
  
  i = 0
  while i < my_number.length
    my_number[i] = my_number[i].to_i
    i += 1
  end
  
  if number > 1000000000000
    answer.push("number is too high, please enter a number less than a trillion")
  else
    if my_number.length == 13
      answer.push("one trillion")
    elsif my_number.length == 12
      singles.each do |key, value|
        if my_number[0] == value
          answer.push(key)
          answer.push("hundred")
        end
      end
      if my_number[2] == 0
        tens.each do |key, value|
          if my_number[1] == value
            answer.push(key)
            answer.push("billion")
          end
        end
      end
      if my_number[2] > 1
        tens.each do |key, value|
          if my_number[1] == value
            answer.push(key)
            answer.push('billion')
          end
        end
      end
      if my_number[3] > 0
        singles.each do |key, value|
          if my_number[0] == value
            answer.push(key)
            answer.push("billion")
          end
        end
      end
    elsif my_number.length == 2 && my_number[1] == 0
      tens.each do |key, value|
        if my_number[0] == value
          answer.push(key)
        end
      end
    elsif my_number.length == 1
        singles.each do |key, value|
          if my_number[0] == value
            answer.push(key)
          end
        end
      end
  end
        
      
     
  

#   teens = {"nineteen"=>19, "eighteen"=>18, "nineteen"=>17, "sixteen"=>16, "fifteen"=>15, "fourteen"=>14, "thirteen"=>13, "twelve"=>12, "eleven"=>11, "ten"=> 10}  
  
  answer = answer.join(' ')
  answer
end
