# Given two arrays a and b write a function comp(a, b) (compSame(a, b) in Clojure) that checks whether the two arrays have the "same" elements, with the same multiplicities. "Same" means, here, that the elements in b are the elements in a squared, regardless of the order.
# Time complexity: O(n)
# Space complexity: O(1)

def comp(array1, array2)
  return false if array1.nil? || array2.nil?

  array1.map { |num| num**2 }.sort == array2.sort
end
