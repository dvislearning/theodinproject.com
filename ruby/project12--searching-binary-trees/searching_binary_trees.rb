module Binary_tree
	class Node
		attr_accessor :parent, :left, :right, :value

		def initialize(value)
			@value = value
		end
	end

	def self.add_to_tree(current_node, to_add_node)
		if current_node.value >= to_add_node.value
			begin
				add_to_tree(current_node.left, to_add_node)
			rescue
				current_node.left = to_add_node
			end
		else
			begin
				add_to_tree(current_node.right, to_add_node)
			rescue
				current_node.right = to_add_node
			end
		end
	end

	def self.breadth_first_search(val)

	end

	def self.depth_first_search(val)

	end


	def self.dfs_rec(current_node, to_find_val)
		return_node = nil
		case current_node.value.to_i <=> to_find_val.to_i
	  when -1
		 	begin
		 		return_node = dfs_rec(current_node.right, to_find_val)
		 	rescue

			end
		when 0		
			return_node = current_node
		when 1
			begin
		 		return_node = dfs_rec(current_node.left, to_find_val)
		 	rescue

			end
		end
		return return_node if return_node != nil
		#return nil if return_node == nil
	end
	

	def self.build_tree(arr)
		arr = arr.shuffle
		root = Node.new(arr.shift.to_i) 
		arr.each do |e|
			n = Node.new(e.to_i)
			add_to_tree(root, n)
		end
		root
	end	
end

#arr = [1, 7, 4, 23]	
arr = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]
root = Binary_tree.build_tree(arr)
p Binary_tree.dfs_rec(root, 7)


