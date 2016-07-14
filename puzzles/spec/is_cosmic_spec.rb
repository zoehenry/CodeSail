require "is_cosmic"

RSpec.describe "is cosmic spec" do
  it "correctly calculates this value for 1" do
    actual = isCosmic(1)
    expected = "1 is 3 is 5 is 4 is cosmic"
    expect(actual).to eq(expected)
  end

  it "correctly calculates this value for 2" do
    actual = isCosmic(2)
    expected = "2 is 3 is 5 is 4 is cosmic"
    expect(actual).to eq(expected)
  end

  it "correctly calculates this value for 3" do
    actual = isCosmic(3)
    expected = "3 is 5 is 4 is cosmic"
    expect(actual).to eq(expected)
  end


  it "correctly calculates this value for 4" do
    actual = isCosmic(4)
    expected = "4 is cosmic"
    expect(actual).to eq(expected)
  end


  it "correctly calculates this value for 5" do
    actual = isCosmic(5)
    expected = "5 is 4 is cosmic"
    expect(actual).to eq(expected)
  end


  it "correctly calculates this value for 6" do
    actual = isCosmic(6)
    expected = "6 is 3 is 5 is 4 is cosmic"
    expect(actual).to eq(expected)
  end


  it "correctly calculates this value for 7" do
    actual = isCosmic(7)
    expected = "7 is 5 is 4 is cosmic"
    expect(actual).to eq(expected)
  end


  it "correctly calculates this value for 8" do
    actual = isCosmic(8)
    expected = "8 is 5 is 4 is cosmic"
    expect(actual).to eq(expected)
  end


  it "correctly calculates this value for 9" do
    actual = isCosmic(9)
    expected = "9 is 4 is cosmic"
    expect(actual).to eq(expected)
  end


  it "correctly calculates this value for 10" do
    actual = isCosmic(10)
    expected = "10 is 3 is 5 is 4 is cosmic"
    expect(actual).to eq(expected)
  end


  it "correctly calculates this value for 11" do
    actual = isCosmic(11)
    expected = "11 is 6 is 3 is 5 is 4 is cosmic"
    expect(actual).to eq(expected)
  end


  it "correctly calculates this value for 12" do
    actual = isCosmic(12)
    expected = "12 is 6 is 3 is 5 is 4 is cosmic"
    expect(actual).to eq(expected)
  end


  it "correctly calculates this value for 13" do
    actual = isCosmic(13)
    expected = "13 is 8 is 5 is 4 is cosmic"
    expect(actual).to eq(expected)
  end


  it "correctly calculates this value for 14" do
    actual = isCosmic(14)
    expected = "14 is 8 is 5 is 4 is cosmic"
    expect(actual).to eq(expected)
  end


  it "correctly calculates this value for 15" do
    actual = isCosmic(15)
    expected = "15 is 7 is 5 is 4 is cosmic"
    expect(actual).to eq(expected)
  end


  it "correctly calculates this value for 16" do
    actual = isCosmic(16)
    expected = "16 is 7 is 5 is 4 is cosmic"
    expect(actual).to eq(expected)
  end


  it "correctly calculates this value for 17" do
    actual = isCosmic(17)
    expected = "17 is 9 is 4 is cosmic"
    expect(actual).to eq(expected)
  end


  it "correctly calculates this value for 18" do
    actual = isCosmic(18)
    expected = "18 is 8 is 5 is 4 is cosmic"
    expect(actual).to eq(expected)
  end


  it "correctly calculates this value for 19" do
    actual = isCosmic(19)
    expected = "19 is 8 is 5 is 4 is cosmic"
    expect(actual).to eq(expected)
  end


  it "correctly calculates this value for 20" do
    actual = isCosmic(20)
    expected = "20 is 6 is 3 is 5 is 4 is cosmic"
    expect(actual).to eq(expected)
  end

end
