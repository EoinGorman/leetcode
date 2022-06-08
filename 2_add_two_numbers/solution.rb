# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, next_node = nil)
    @val = val
    @next = next_node
  end
end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  length = longest_length(l1,l2)
  previous_node = nil
  head_node = nil
  carry_over = 0

  length.times do
    print "Adding: #{l1.val}, #{l2.val} (Carrying: #{carry_over}) "
    val, carry_over = add_nodes(l1,l2, carry_over)
    puts "Got: #{val}, #{carry_over}"
    new_node = ListNode.new(val, nil)
    if previous_node.nil? # First time running
      head_node = new_node
    else
      previous_node.next = new_node
    end
    previous_node = new_node

    l1 = l1.next unless l1.nil?
    l2 = l2.next unless l2.nil?
  end

  previous_node.next = ListNode.new(carry_over, nil) if carry_over != 0
  head_node
end

def add_nodes(n1, n2, carry_over = 0)
  n1_val = n1.nil? ? 0 : n1.val
  n2_val = n2.nil? ? 0 : n2.val

  val = n1_val + n2_val + carry_over
  return val - 10, 1 if val >= 10

  [val, 0]
end

# compares two linked lists returning the length of the longest
def longest_length(l1,l2)
  len1 = list_length(l1)
  len2 = list_length(l2)
  return len1 if len1 >= len2

  len2
end

def list_length(head)
  length = 0
  until head.nil?
    head = head.next
    length += 1
  end
  length
end

def print_list(head)
  print("[")
  until head.nil?
    print(head.val)
    head = head.next
  end
  print("]")
end

if __FILE__ == $0
  l1_3 = ListNode.new(3, nil)
  l1_2 = ListNode.new(4, l1_3)
  l1_1 = ListNode.new(2, l1_2)

  l2_3 = ListNode.new(4, nil)
  l2_2 = ListNode.new(6, l2_3)
  l2_1 = ListNode.new(5, l2_2)

  result = add_two_numbers(l1_1, l2_1)
  print_list(result)
end