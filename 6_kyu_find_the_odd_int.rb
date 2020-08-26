# Given an array of integers, find the one that appears an odd number of times.

# There will always be only one integer that appears an odd number of times.

# Time complexity: O(n)
# Space complexity: O(n)

def find_it(seq)
  hash = Hash.new(0)
  seq.each do |num|
    hash[num] += 1
  end

  hash.each do |num, no_of_occurence|
    return num if no_of_occurence.odd?
  end
end

# This is cleaner, but with O(n^2) time complexity
def find_it(seq)
  seq.find { |n| seq.count(n).odd? }
end
