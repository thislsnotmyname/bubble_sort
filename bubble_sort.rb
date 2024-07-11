def bubble_sort(array)
  sorted_array = array
  until sorted_array == array.sort
    sorted_array.each_with_index do |val, idx|
      if sorted_array[idx+1] == nil
        break
      elsif val > sorted_array[idx+1]
        (sorted_array[idx..idx+1] = sorted_array[idx..idx+1].rotate).flatten
      end
    end
  end
  sorted_array
end

def random_array(num_of_indices, min, max)
  prng = Random.new
  array = Array.new
  num_of_indices.times do |num|
    array.push(prng.rand(min..max))
  end
  p array
end

p bubble_sort(random_array(20, 1, 25))
