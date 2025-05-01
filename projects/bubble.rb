def bubble_sort(array)
  n = array.length
  swaps = 0
  loop do
    swapped = false

    (n - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
        swaps += 1
      end
    end

    break unless swapped
  end
  puts "Swaps: #{swaps}"
  array
end


unsorted_array = [4, 3, 78, 2, 0, 2]
sorted_array = bubble_sort(unsorted_array)
puts "Sorted Array: #{sorted_array}"
