# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer}
def find_tilt(root)
  left_val = 0
  right_val = 0
  left_tilt = 0
  right_tilt = 0
  unless root.left.nil?
      left_val = root.left.val
      left_tilt = find_tilt(root.left)
  end
  unless root.right.nil?
      right_val = root.right.val
      right_tilt = find_tilt(root.right)
  end
  tilt = ((left_val - right_val) + left_tilt + right_tilt).abs
  puts "Tilt: #{tilt}"
  tilt
end