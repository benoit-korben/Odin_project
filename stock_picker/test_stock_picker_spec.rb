require 'rspec'
require_relative 'stock_picker'

describe '#stock_picker' do
  it 'returns the best days to buy and sell stock' do
    expect(stock_picker([17,3,6,9,15,8,6,1,10])).to eq([1, 4]);
    expect(stock_picker([2, 1, 5, 3, 6, 4])).to eq([1, 4]);
    expect(stock_picker([7, 6, 5, 4, 3, 2, 1])).to eq([0, 0]);
    expect(stock_picker([1, 2, 3, 4, 5, 6, 7])).to eq([0, 6]);
  end
end
