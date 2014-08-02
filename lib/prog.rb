def number_text(number)
  my_number = number.to_s.split('')
  answer = []
  
  singles = {"nine"=>9, "eight"=>8, "seven"=>7, "six"=>6, "five"=>5, "four"=>4, "three"=> 3,"two" => 2, "one" => 1}
  
  teens = {"nineteen"=>9, "eighteen"=>8, "seventeen"=>7, "sixteen"=>6, "fifteen"=>5, "fourteen"=>4, "thirteen"=>3, "twelve"=>2, "eleven"=>1, "ten"=>0}  
  
  tens ={"ninety" => 9, "eighty" => 8, "seventy" => 7, "sixty" => 6, "fifty" => 5, "forty" => 4, "thirty" => 3, "twenty" => 2, "ten" => 1}
  
i = 0
while i < my_number.length
  my_number[i] = my_number[i].to_i
  i += 1
end
  
if number > 1000
  answer.push("number is too high, please enter a number less than one thousand")
else
  if my_number.length == 4
    answer.push("one thousand")
  elsif my_number.length == 3  && my_number[1] == 0 && my_number[2] == 0
    singles.each do |key, value|
      if my_number[0] == value
        answer.push(key)
        answer.push("hundred")
      end
    end
  elsif my_number.length == 3 && my_number[1] == 1
    singles.each do |key, value|
      if my_number[0] == value
        answer.push(key)
        answer.push("hundred")
      end
    end
    teens.each do |key, value|
      if my_number[2] == value
        answer.push(key)
      end
    end
  elsif my_number.length == 3 && my_number[1] > 1 && my_number[2] > 1
    singles.each do |key, value|
      if my_number[0] == value
        answer.push(key)
        answer.push("hundred")
      end
    end
    tens.each do |key, value|
      if my_number[1] == value
        answer.push(key)
      end
    end
    singles.each do |key, value|
      if my_number[2] == value
        answer.push(key)
      end
    end
  elsif my_number.length == 3 && my_number[1] == 0 && my_number[2] > 0
    singles.each do |key, value|
      if my_number[0] == value
        answer.push(key)
        answer.push("hundred")
      end
    end
    singles.each do |key, value|
      if my_number[2] == value
        answer.push(key)
      end
    end
  elsif my_number.length == 2  && my_number[0] > 1 && my_number[1] > 1
    tens.each do |key, value|
      if my_number[0] == value
        answer.push(key)
      end
    end
    singles.each do |key, value|
      if my_number[1] == value
        answer.push(key)
      end
    end
  elsif my_number.length == 2 && my_number[0] == 1 && my_number[1] > 0
    teens.each do |key, value|
      if my_number[1] == value
        answer.push(key)
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
  answer = answer.join(' ')
  answer
end
