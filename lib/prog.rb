def number_text(number)
  number_list = { "one trillion" =>1000000000000, "one billion" =>1000000000, " one hundred"=> 100, "ten"=> 10, "one" => 1}

  # number_split = number.split('')
  # if number_split.length = 13
  #   trillion
  # # number_list = { "hundred"=> 100, "ten"=> 10, "one" => 1}
  my_number = []

  number_list.each do |key, value|
    if number >= value
      my_number.push(key)
      number = number - value
      redo
    end
  end

  my_number = my_number.join(' ')
  my_number
end
