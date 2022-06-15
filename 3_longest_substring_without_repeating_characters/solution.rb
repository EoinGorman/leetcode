# frozen_string_literal: true

# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  best = 0
  s.each_char.with_index do |c, i|
    # remaining = s.length - (i + 1)
    # break if remaining < best

    sub_length = longest_substring_from(c, i, s)
    best = sub_length if sub_length > best
  end
  best
end

def longest_substring_from(char, index, full_string)
  sub_string = char
  (index + 1).upto(full_string.length - 1) do |j|
    break if sub_string.include?(full_string[j])

    sub_string << full_string[j]
  end
  sub_string.length
end

# Example 1
input = 'abcabcbb'
result = length_of_longest_substring(input)
puts "Result: #{result}"

# Example 2
input = 'bbbbb'
result = length_of_longest_substring(input)
puts "Result: #{result}"

# Example 3
input = 'pwwkew'
result = length_of_longest_substring(input)
puts "Result: #{result}"

# Example 4
input = ' '
result = length_of_longest_substring(input)
puts "Result: #{result}"
