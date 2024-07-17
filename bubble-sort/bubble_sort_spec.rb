require_relative 'bubble_sort'

RSpec.describe 'bubble_sort' do
  it 'sorts an array in ascending order' do
    expect(bubble_sort([4, 3, 78, 2, 0, 2])).to eq([0, 2, 2, 3, 4, 78])
    expect(bubble_sort([9, 5, 1, 7, 3])).to eq([1, 3, 5, 7, 9])
    expect(bubble_sort([100, 50, 25, 10, 5])).to eq([5, 10, 25, 50, 100])
    expect(bubble_sort([1, 2, 3, 4, 5])).to eq([1, 2, 3, 4, 5])
    expect(bubble_sort([5, 4, 3, 2, 1])).to eq([1, 2, 3, 4, 5])
  end
end
