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
  middle = head
  node_count = 0
  until head.nil?
    head = head.next
    node_count += 1
  end

  middle_number = (node_count / 2)
  middle_number.times do
    middle = middle.next
  end
  middle
end

if __FILE__ == $0
  n5 = ListNode.new(5, nil)
  n4 = ListNode.new(4, n5)
  n3 = ListNode.new(3, n4)
  n2 = ListNode.new(2, n3)
  n1 = ListNode.new(1, n2)

  result = middle_node(n1)
  puts "Result: #{result}: #{result.val}"
end