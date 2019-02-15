def merge_sort(list)
  if list.size < 2
    return list
  else
    return merge(merge_sort( list[0..(list.length/2) - 1] ), merge_sort( list[(list.length/2)..-1] ))
  end
end

def merge(a, b)
  merged_array = []
  until a.size == 0 || b.size == 0
    if a[0].to_i <= b[0].to_i
      merged_array << a.shift
    else 
      merged_array << b.shift
    end
  end
  merged_array + a + b

end
p merge_sort([4, 8, 1, 3, 2, 5, 7, 6, 10, 9, 11])