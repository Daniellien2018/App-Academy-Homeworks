class Stack
    def initialize
      # create ivar to store stack here!
      @stack_array = []
      @size = 0

    end
    def stack_array
      @stack_array
    end

    def push(el)
      # adds an element to the stack
      stack_array.push(el)
      @size += 1

    end

    def pop
      # removes one element from the stack
      stack_array.pop
      @size -= 1 unless size == 0
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      return stack_array[-1]
    end
    def empty?
      @size == 0 #this already returns a boolean, no need for true false
    end

    def inspect
      "haha got u "
      #something else
    end
end
ms = Stack.new
ms.push(1)
ms.push(2)
ms.push(4)
p ms

class Queue
  def initialize 
    @queue = []
    @size = 0
  end
  def queue
    @queue
  end

  def enqueue(el)
    @queue.push(el)
  end

  def dequeue
    @queue.shift
  end

  def peek
    return @queue[0]
  end

  def empty?
    @size == 0
  end
  def show
      @queue.dup #do not want to expose underlying data structure
  end

end
#use attr reader
class Map
  def initialize 
    map_array = []
  end
  def map_array
    @map_array
  end

  def set(key,value)
   index_pair = map_array.index {|pair| pair[0] == key}
   if index_pair == true
      map_array[index_pair][1] = value
   else
    map_array.push([key,value])
   end
   value
  end

  def get(key)
    map_array.each do |pair|
      if pair[0] == key
        return pair[1] 
      end
    end
  end

  def delete(key)
      value = get(key)
      map_array.reject! {|pair| pair[0] == key}
      value
  end
  def show

    
  end

end

#p : calls inspect and adds a new line
# puts: calls to_s and adds a new line
#print: calls to_S , no new line


