class Stack
    def initialize
      # create ivar to store stack here!
      @stack_array = []
    end
    def stack_array
      @stack_array
    end

    def push(el)
      # adds an element to the stack
      stack_array.push(el)

    end

    def pop
      # removes one element from the stack
      stack_array.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      return stack_array[-1]
    end
end

class Queue
  def initialize
    queue = []
  end
  def queue
    @queue
  end

  def enqueue(el)
    queue.push(el)
  end

  def dequeue
    queue.shift
  end

  def peek
    return queue[0]
  end

end

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