require 'rspec'
require './string_reverse'

describe 'StringReverse test' do
  it 'can reverse 4 length string' do
    expect(StringReverse.do('abcd')).to eq('dcba')
  end
  it 'can reverse 5 length string' do
    expect(StringReverse.do('abcde')).to eq('edcba')
  end
  it 'is not bang method' do
  text='abcde'
  expect(StringReverse.do(text)).to eq('edcba')
  expect(text).to eq('abcde')
 end
end