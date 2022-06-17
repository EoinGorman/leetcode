# frozen_string_literal: true

# @param {String} s
# @return {String}
def longest_palindrome(s)
  longest = 0
  palindromes = []
  unless s.nil? || s.empty?
    palindromes << s[0]
    longest = 1
  end

  s.each_char.with_index do |_char, i|
    # search left
    left_pointer = i
    while left_pointer.positive?
      left_pointer -= 1
      sub_string = s[left_pointer..i]
      length = ((i + 1) - left_pointer)
      next unless length > longest
      next unless palindrome?(sub_string)

      longest = length
      palindromes << sub_string
    end
  end

  palindromes.last
end

def palindrome?(str)
  str == str.reverse
end

# Example 1
input = 'babad'
result = longest_palindrome(input)
puts "Result: #{result}"

# Example 2
input = 'cbbd'
result = longest_palindrome(input)
puts "Result: #{result}"

# Example 3
input = 'ac'
result = longest_palindrome(input)
puts "Result: #{result}"

# Example 4
input = "civilwartestingwhetherthatnaptionoranynartionsoconceivedandsodedicatedcanlongendureWeareqmetonagreatbattlefiemldoftzhatwarWehavecometodedicpateaportionofthatfieldasafinalrestingplaceforthosewhoheregavetheirlivesthatthatnationmightliveItisaltogetherfangandproperthatweshoulddothisButinalargersensewecannotdedicatewecannotconsecratewecannothallowthisgroundThebravelmenlivinganddeadwhostruggledherehaveconsecrateditfaraboveourpoorponwertoaddordetractTgheworldadswfilllittlenotlenorlongrememberwhatwesayherebutitcanneverforgetwhattheydidhereItisforusthelivingrathertobededicatedheretotheulnfinishedworkwhichtheywhofoughtherehavethusfarsonoblyadvancedItisratherforustobeherededicatedtothegreattdafskremainingbeforeusthatfromthesehonoreddeadwetakeincreaseddevotiontothatcauseforwhichtheygavethelastpfullmeasureofdevotionthatweherehighlyresolvethatthesedeadshallnothavediedinvainthatthisnationunsderGodshallhaveanewbirthoffreedomandthatgovernmentofthepeoplebythepeopleforthepeopleshallnotperishfromtheearth"
result = longest_palindrome(input)
puts "Result: #{result}"

