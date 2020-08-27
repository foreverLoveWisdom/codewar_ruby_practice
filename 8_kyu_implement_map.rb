# Create a method map that accepts a list and a block, runs the block for each item in the list, and returns a new array with the block return values.

# Time complexity: O(n)
# Space complexity: O(n)

def map(list, &block)
  array = []
  list.each do |ele|
    array << block.call(ele)
  end

  array
end
