require 'byebug'
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

def my_min2(arr)
    min = arr.first
    arr.each do |el|
        if el < min
            min = el
        end
    end
    min
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min2(list)  # =>  -5


