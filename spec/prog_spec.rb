require 'rspec'
require 'prog'

describe 'number_text' do
  it 'will tell you to choose a number less than a million if you enter a number over that amount' do
    expect(number_text(1001)).to(eq('number is too high, please enter a number less than one thousand'))
  end
  
  it 'will change the digit 1 to the string "one"' do
    expect(number_text(1)).to(eq('one'))
  end
  
  it 'will change the digit 10 to the string "ten"' do
    expect(number_text(10)).to(eq('ten'))
  end
  
  it 'will change the digit 14 to the string "fourteen"' do
    expect(number_text(14)).to(eq('fourteen'))
  end
  
  it 'will change the digit 1000 to the string "one thousand"' do
    expect(number_text(1000)).to(eq('one thousand'))
  end
  
  it 'will change the digit 80 to the string "eighty"' do
    expect(number_text(80)).to(eq('eighty'))
  end
  
  it 'will change the digit 65 to the string "sixty five"' do
    expect(number_text(65)).to(eq('sixty five'))
  end
  
  it 'will change the digit 700 to the string "seven hundred"' do
    expect(number_text(700)).to(eq('seven hundred'))
  end
  
  it 'will change the digit 419 to the string "four hundred nineteen"' do
    expect(number_text(419)).to(eq('four hundred nineteen'))
  end
  
  it 'will change the digit 703 to the string "seven hundred three"' do
    expect(number_text(703)).to(eq('seven hundred three'))
  end
  
  it 'will change the digit 773 to the string "seven hundred seventy three"' do
    expect(number_text(773)).to(eq('seven hundred seventy three'))
  end
end
