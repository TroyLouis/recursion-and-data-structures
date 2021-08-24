def fib(n)
  return [0] if n == 0
  return [0,1] if n == 1

  fibs = fib(n-1)
  fibs << fibs[n-2] + fibs[n-1]

end

def mergesort(arr)
  return arr if arr.length < 2

  midpoint = arr.length / 2

  left = mergesort(arr[0...midpoint])
  right = mergesort(arr[midpoint..arr.length])

  sorted_array = []

  until left.empty? || right.empty?
    left.first <= right.first ? sorted_array << left.shift : sorted_array << right.shift
  end

  sorted_array + left + right

end

test = [1,2,3,4,5,4,3,2,1]
p mergesort(test)