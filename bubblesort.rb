
###########################################################
# A method #bubble_sort that takes an array and returns   #
# a sorted array. It must use the bubble sort methodology #
# and obviously we cant use the sort method ;-)           #
#                                                         #
###########################################################

require 'pry'

def bubble_sort(num_arr)

  temp = 0
  # swapped = false
  swap_count = 0

  num_arr.each_with_index do |item, idx|
    next_item = num_arr[idx + 1]
      
    if next_item != nil 
      if item > next_item
        temp = item
        num_arr[idx] = next_item
        num_arr[idx + 1] = temp
        # swapped = true
        swap_count += 1
      end
    end
  end

  if swap_count != 0
    bubble_sort(num_arr)
  else
    # p "Swapped = #{swapped}"
    puts "After sort:\nnum_arr = #{num_arr}"
  end
 
end


num_arr1= [4, 3, 78, 2, 0, 2]
num_arr2 = [6, 5, 3, 1, 8, 7, 2, 4]
num_arr3 = [5, 1, 4, 2, 8]

numbers_arr = [num_arr1, num_arr2, num_arr3]

numbers_arr.each do |num_arr|
  puts "Before sort:\nnum_arr = #{num_arr}"
  bubble_sort(num_arr)
end