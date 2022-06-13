# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

# @param {TreeNode} root
# @return {Integer}
def find_tilt(root)
  return 0 if root.nil?

  total_tilt = get_tilt(root)
  total_tilt += find_tilt(root.left) unless root.left.nil?
  total_tilt += find_tilt(root.right)  unless root.right.nil?
  total_tilt
end

def get_tilt(node)
  left_value = 0
  right_value = 0

  left_value = sum_children(node.left) unless node.left.nil?
  right_value = sum_children(node.right) unless node.right.nil?
  puts "Tilt for #{node.val} : (#{left_value} - #{right_value} = #{(left_value - right_value).abs})"
  (left_value - right_value).abs
end

def sum_children(child)
  return 0 if child.nil?

  total = child.val
  total += sum_children(child.left) unless child.left.nil?
  total += sum_children(child.right) unless child.right.nil?
  total
end
# Example 2
# tn3 = TreeNode.new(3)
# tn5 = TreeNode.new(5)
# tn7 = TreeNode.new(7)

# tn2 = TreeNode.new(2, tn3, tn5)
# tn9 = TreeNode.new(9, nil, tn7)

# root = TreeNode.new(4, tn2, tn9)

# Example 3
# [21,7,14,1,1,2,2,3,3]
tn1 = TreeNode.new(3)
tn2 = TreeNode.new(3)
tn3 = TreeNode.new(2)
tn4 = TreeNode.new(2)
tn5 = TreeNode.new(1)

tn6 = TreeNode.new(1, tn1, tn2)
tn8 = TreeNode.new(14, tn3, tn4)

tn7 = TreeNode.new(7, tn6, tn5)

root = TreeNode.new(21, tn7, tn8)

result = find_tilt(root)
puts "Result: #{result}"
