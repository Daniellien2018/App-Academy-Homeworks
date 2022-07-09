#BIG O octopus

def sluggish_octopus(fishes)
  fishes.each_with_index do |fish1, i1|
    max_length = true
        
    fishes.each_with_index do |fish2, i2|
      next if i1 == i2
      max_length = false if fish2.length > fish1.length
    end
        
    return fish1 if max_length
  end
end

# def dominant_octopus(arr)

# end

def clever_octopus(arr)
  longest = arr[0]#length is "fish"
  arr.each do |ele|
    if ele.length > longest.length # if 6 > 4
      longest = ele
    end
  end
  return longest
end

array = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
    'fiiiissshhhhhh']

# p sluggish_octopus(array)
# p clever_octopus(array)

# class Array
#     #this should look familiar
#     def merge_sort(&prc)
#       prc ||= Proc.new { |x, y| x <=> y }
  
#       return self if count <= 1
  
#       midpoint = count / 2
#       sorted_left = self.take(midpoint).merge_sort(&prc)
#       sorted_right = self.drop(midpoint).merge_sort(&prc)
  
#       Array.merge(sorted_left, sorted_right, &prc)
#     end
  
#     private
#     def self.merge(left, right, &prc)
#       merged = []
  
#       until left.empty? || right.empty?
#         case prc.call(left.first, right.first)
#         when -1
#           merged << left.shift
#         when 0
#           merged << left.shift
#         when 1
#           merged << right.shift
#         end
#       end
  
#       merged.concat(left)
#       merged.concat(right)
  
#       merged
#     end
#   end
# end



  ##Dancing Octopus
  #O(n)
def slow_dance(dir, array)
  array.each_with_index do |ele, i|
    if ele == dir
      return i
    end
  end
  return false
end
tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", 
    "left",  "left-up" ]
# p slow_dance("up", tiles_array) #> 0
    
# p slow_dance("right-down", tiles_array) #> 3

def constant_dance(dir, hash)
end
