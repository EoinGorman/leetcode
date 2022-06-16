# frozen_string_literal: true

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
  merged_arr = (nums1 + nums2).sort
  middle = (merged_arr.length / 2)
  if merged_arr.length.even?
    (merged_arr[middle] + merged_arr[middle-1]) / 2.0
  else
    merged_arr[middle]
  end
end

# Example 1
nums1 = [1, 3]
nums2 = [2]
output = find_median_sorted_arrays(nums1, nums2)
puts "Result: #{output}"

# Example 2
nums1 = [1, 2]
nums2 = [3, 4]
output = find_median_sorted_arrays(nums1, nums2)
puts "Result: #{output}"
