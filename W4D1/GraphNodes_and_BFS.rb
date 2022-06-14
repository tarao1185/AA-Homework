class GraphNode
    attr_accessor :val, :neighbors

    def initialize(val)
        self.val = val
        self.neighbors = []
    end

    def bfs(starting_node, target_value)
        visitied = Set.new()

        if target_value == starting_node.val
            return starting_node.val
        else
            starting_node.neighbors.each do |neighbor|
                puts node
                visited.add(node.to_sym) 
                return neighbor.val if neighbor.val == target_value
            end
        end
        
    end


end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]
