# frozen_string_literal: true

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  result = []
  desired = 0
  nums_without_current = nums.dup

  nums.each.with_index do |num, index|
    result[0] = index

    desired = target - num
    nums_without_current.delete_at(index)

    break if nums_without_current.include?(desired)

    nums_without_current.insert(index, num)
    next
  end
  result[1] = nums_without_current.index(desired) + 1
  result
end

output = two_sum([2, 7, 11, 15], 9)
puts "Result: #{output}"

output = two_sum([3, 2, 4], 6)
puts "Result: #{output}"

output = two_sum([3, 3], 6)
puts "Result: #{output}"

output = two_sum((1..10_000).to_a, 19_999)
puts "Result: #{output}"
