require 'rspec'
require 'prog'

describe 'number_text' do
  it 'will tell you to choose a number less then a trillion if you enter a number over that amount' do
    expect(number_text(1000000000001)).to(eq('number is too high, please enter a number less than a trillion'))
  end
  
  it 'will give you the text version of 180 billion' do
    expect(number_text(180000000000)).to(eq('one hundred eighty billion'))
  end
  
  it 'will change the digit 1 to the string "one"' do
    expect(number_text(1)).to(eq('one'))
  end
  it 'will change the digit 10 to the string "ten"' do
    expect(number_text(10)).to(eq('ten'))
  end

  it 'will change the digit 1000000000000 to the string "one trillion"' do
    expect(number_text(1000000000000)).to(eq('one trillion'))
  end
  
  it 'will change the digit 80000 to the string "eighty thousand"' do
    expect(number_text(80000)).to(eq('eighty thousand'))
  end
end
