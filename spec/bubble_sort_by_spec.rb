require_relative "../bubble_sort_by"

describe "#bubble_sort_by" do
  it "accepts various blocks to define sort condition" do
    expect(bubble_sort_by(["hi","hello","hey"]) {|a,b| a.length-b.length}).to eq ["hi","hey","hello"]
    expect(bubble_sort_by(["to","be","or","not"]){|a,b| -(a <=> b)}).to eq ["to","or","not","be"]
  end
end
