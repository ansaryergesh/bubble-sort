# Bubble Sort Optimized Algorithm
puts "THis one is Bubble Sort Optimized Algorithm"

ArrayOfNumbers = Array[5,2,1,8,0];
def bubble__sort(arr)
    n = arr.length;
    flag = false;
    for j in 0..n-1
        if (!flag&&(j!=0))
            break;
        end
        flag = false;
        for i in 1..n-1
            if (arr[i-1]>arr[i])
                help = arr[i-1];
                arr[i-1] = arr[i];
                arr[i] = help;
                flag = true;
            end
        end
    end
    arr
end
puts bubble__sort(ArrayOfNumbers);

# Bubble Sort By function with block
puts "Bubble_sort_by function by using yield"

def bubble__sort_by(arr)
  n = arr.length;
  flag = false;
  for j in 0..n-1
      if (!flag&&(j!=0))
          break;
      end
      flag = false;
      for i in 1..n-1
          if yield(arr[i-1],arr[i]) > 0 
              help = arr[i-1];
              arr[i-1] = arr[i];
              arr[i] = help;
              flag = true;
          end
      end
  end
  arr
end

result = bubble__sort_by(["hi","hello","hey"]) do |left,right|
    left.length - right.length
    end

puts result.join(",")