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
  tilt = (left_val - right_val).abs
  puts "Tilt for #{root.val}: #{tilt}"
  tilt
end

tn3 = TreeNode.new(3)
tn5 = TreeNode.new(5)
tn7 = TreeNode.new(7)

tn2 = TreeNode.new(2, tn3, tn5)
tn9 = TreeNode.new(9, nil, tn7)

root = TreeNode.new(4, tn2, tn9)

result = find_tilt(root)
puts "Result: #{result}"


# Badly explained problem.
# Need to get the tilt of each node in tree and add all the left tilts vs the right tilts.
# Including root node, so basic count of everything on left vs everything on right