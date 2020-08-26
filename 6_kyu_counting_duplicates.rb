# Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.

# "abcde" -> 0 # no characters repeats more than once
# "aabbcde" -> 2 # 'a' and 'b'
# "aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
# "indivisibility" -> 1 # 'i' occurs six times
# "Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
# "aA11" -> 2 # 'a' and '1'
# "ABBA" -> 2 # 'A' and 'B' each occur twice

# Time complexity: O(n)
# Space complexity: O(n)

def duplicate_count(text)
  return 0 if text.empty?

  hash = Hash.new { 0 }
  text.split('').map(&:downcase).map(&:to_sym).each do |char|
    hash[char] += 1
  end

  hash.count { |_, v| v >= 2 }
end
