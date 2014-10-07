require 'rspec'
require './merge_sort'

describe 'the test of merge sort' do
 it 'can sort 5 items' do
  expect(MergeSort.exec([2,3,1,5,4])).to eq([1,2,3,4,5])
 end
 it 'can sort 5 items part2' do
  expect(MergeSort.exec([5,4,3,2,1])).to eq([1,2,3,4,5])
 end
 it 'is not bang method' do
  target=[5,4,3,2,1]
  expect(MergeSort.exec(target)).to eq([1,2,3,4,5])
  expect(target).to eq([5,4,3,2,1])
 end
end