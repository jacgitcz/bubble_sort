require_relative "../bubble_sort"

describe "#bubble_sort" do
  it "does not change an already sorted array" do
    expect(bubble_sort([1,2,3,4,5])).to eq [1,2,3,4,5]
  end
  
  it "sorts arrays with duplicate elements" do
    expect(bubble_sort([5,1,3,5,2,1,3,2,4,4])).to eq [1,1,2,2,3,3,4,4,5,5]
  end

  it "sorts various arrays" do
    expect(bubble_sort([5,4,3,2,1])).to eq [1,2,3,4,5]
    expect(bubble_sort([1,5,3,2,6,4,9,3])).to eq [1,2,3,3,4,5,6,9]
    expect(bubble_sort([4,3,78,2,0,2])).to eq [0,2,2,3,4,78]
  end
end
