# @param {String} s
# @return {Integer}
def roman_to_int(s)
  map = {
    "CM" => 900,
    "CD" => 400,
    "XC" => 90,
    "XL" => 40,
    "IX" => 9,
    "IV" => 4,
    "M" => 1000,
    "D" => 500,
    "C" => 100,
    "L" => 50,
    "X" => 10,
    "V" => 5,
    "I" => 1
  }

  total = 0
  map.each do |key, value|
    total += s.scan(/#{key}/).length * value
    s.sub!(key, '')
  end
  total
end

puts roman_to_int("MMMDCCXXIV")