# Given the triangle of consecutive odd numbers:
#             1
#           3     5
#        7     9    11
#    13    15    17    19
# 21    23    25    27    29

# Calculate the row sums of this triangle from the row index (starting at index 1) e.g.:
#   row_sum_odd_numbers(1); # 1
# row_sum_odd_numbers(2); # 3 + 5 = 8

# Time Complexity: O(n)
# Space Complexity: O(1)

def row_sum_odd_numbers(n)
  return 1 if n == 1
  return 8 if n == 2

  first_num = n * (n - 1) + 1
  result = first_num
  2.upto(n) do |_|
    first_num += 2
    result += first_num
  end

  result
end
