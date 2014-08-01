require 'rspec'
require 'prog'

describe 'number_text' do
  it 'will change the digit 1 to the string "one"' do
    expect(number_text(1)).to(eq('one'))
  end
end
