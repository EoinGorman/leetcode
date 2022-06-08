# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end

# @param {ListNode} head
# @return {ListNode}
def middle_node(head)

end

if __FILE__ == $0
  n5 = ListNode.new(5, nil)
  n4 = ListNode.new(5, n5)
  n3 = ListNode.new(5, n4)
  n2 = ListNode.new(5, n3)
  n1 = ListNode.new(5, n2)

  result = middle_node(n1)
  puts "Result: #{result}"
end