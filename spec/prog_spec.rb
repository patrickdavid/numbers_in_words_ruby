require 'rspec'
require 'prog'

describe 'number_text' do
  it 'will change the digit 1 to the string "one"' do
    expect(number_text(1)).to(eq('one'))
  end
  it 'will change the digit 10 to the string "ten"' do
    expect(number_text(10)).to(eq('ten'))
  end
end
