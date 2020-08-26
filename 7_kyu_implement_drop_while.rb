# Create a method drop_while that accepts a list and a block, and returns a copy of the list that skips over elements from the left, for as long as the given block returns true.

# Time complexity: O(n)
# Space complexity: O(1)
# I know there is a built-in drop_while method in the Enumerable Module. Just wanna implement it for fun

def drop_while(list, &block)
  return list if list.empty?

  starting_index = 0
  list.each_with_index do |ele, index|
    if block.call(ele) == false
      starting_index = index
      break
    end
  end

  list[starting_index, list.count - 1]
end
