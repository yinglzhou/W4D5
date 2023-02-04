require "byebug"

# def my_min(arr)
#     swapped = true
#     arr1 = arr.dup
#     while swapped
#         swapped = false
#         (0...arr.length - 1).each do |i|
#             if arr1[i] > arr1[i + 1]
#                 arr1[i], arr1[i + 1] = arr1[i + 1], arr1[i]
#                 swapped = true
#             end
#         end
#     end
#     arr1[0]
# end

#O(n^2)

def my_min2(arr)
  min = arr.first
  arr.each do |el|
    if el < min
      min = el
    end
  end
  min
end

list = [0, 3, 5, 4, -5, 10, 1, 90]
p "my_min2(list):phase2 => #{my_min2(list)}"  # =>  -5
#O(n)

def largest_contiguous_subsum_1(list)
  #get all the sub_arrs
  array = []
  (0...list.length).each do |i|
    (i...list.length).each do |j|
      array << list[i..j]
    end
  end

  sum = 0
  array.each do |sub|
    if sub.reduce(:+) > sum
      sum = sub.reduce(:+)
    end
  end
  sum
end

# list = [5, 3, -7]
list = [2, -2, 7, 5]

p "largest_contiguous_subsum(list) : phase_1 => #{largest_contiguous_subsum_1(list)}"

def largest_contiguous_subsum(arr)
  max_sum = 0
  current_sum = 0

  arr.each do |num|
    current_sum += num
    if current_sum > max_sum
      max_sum = current_sum
    end
    if current_sum < 0
      current_sum = 0
    end
  end

  max_sum
end

p largest_contiguous_subsum_2(list)
