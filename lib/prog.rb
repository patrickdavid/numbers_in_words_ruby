def number_text(number)
  number_list = { "hundred"=> 100, "ten"=> 10, "one" => 1}
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
