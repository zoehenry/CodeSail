require "stack"

RSpec.describe "stack" do
  it "can be created" do
    stack = Stack.new
    expected = []
    actual = stack.this_stack
    expect(actual).to eq(expected)
  end

  it "can push elements" do
    stack = Stack.new
    expected = [1]
    actual = stack.push(1)
    expect(actual).to eq(expected)
  end

  it "can pop elements" do
    stack = Stack.new
    stack.this_stack = [1, 2, 3, 4]
    expected = 4
    actual = stack.pop
    expect(actual).to eq(expected)
  end

  it "can return the number of elements" do
    stack = Stack.new
    stack.this_stack = [1, 2, 3, 4]
    expected = 4
    actual = stack.count
    expect(actual).to eq(expected)
  end

  it "can test a palindrome" do
    actual = is_palindrome("racecar")
    expect(actual).to eq(true)
  end

  it "can can test if it is not a palindrome" do
    actual = is_palindrome("table")
    expect(actual).to eq(false)
  end

end
