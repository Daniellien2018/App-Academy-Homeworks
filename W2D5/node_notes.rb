require relative "DIY_ADTs"
class Node
    attr_reader :value, :children

    def initialize(value, children=[])
        @value = value
        @children = children
    end

end




# d = Node.new('d')
# e = Node.new('e')
# f = Node.new('f')
# g = Node.new('g')

# b = Node.new('b', ['d', 'e'])
# c = Node.new('c', ['f','g'])

# a = Node.new('a', ['b','c'])

def dfs(node,target)
    p node.value
    return node if node.value == target
    return nil if node.children.length == 0 

    node.children.each do |child|
        res = dfs(child, target)
        return res unless res.nil?
    end
    nil
end

# p dfs(a, 'e')

def bfs(node, target) #look at nodes siblings before look at nodes children 
    q = Queue.new
    q.enqueue(node)
    while (q.size > 0)
        curr_node = q.dequeue
        return curr_node if curr_node.value == target  
    end

end
