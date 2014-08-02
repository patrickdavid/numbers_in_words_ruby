def number_text(number)
  
  trillion = {"one trillion" =>1000000000000}
  
  billions = {"billion" =>1000000000}
  
  millions = {"million" => 1000000}
  
  thousands= {"thousand" => 1000}
  
  hundreds ={" hundred"=> 100, "ninety" => 90, "eighty" => 80, "seventy" => 70, "sixty" => 60, "fifty" => 50, "forty" => 40, "thirty" => 30, "twenty" => 20}
  
  teens = {"nineteen"=>19, "eighteen"=>18, "nineteen"=>17, "sixteen"=>16, "fifteen"=>15, "fourteen"=>14, "thirteen"=>13, "twelve"=>12, "eleven"=>11, "ten"=> 10}
  
  singles = {"nine"=>9, "eight"=>8, "seven"=>7, "six"=>6, "five"=>5, "four"=>4, "three"=> 3,"two" => 2, "one" => 1}
  
  hashes = [trillion, billions, millions, thousands, hundreds, teens, singles]
  
  my_number = []
  
  
  hashes.each do |index|
    index.each do |key, value|
      if number >= value
        my_number.push(key)
        number = number - value
        redo
      end
    end
  end
  
  final_num = []

  if my_number.length == 5
    singles.each do |key, value|
      if my_number.length == value
        final_num.push(key)
        final_num.push(my_number.uniq)
      end
    end
    my_number = final_num.join('')
    return my_number
  end
  
  
    
  
  my_number = my_number.join(' ')
  my_number
end
