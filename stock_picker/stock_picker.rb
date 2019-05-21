#pass an array of numbers
#iterate over the array and compare which numbers have the highest value
#store the value and the indexes of numbers
#return the answer array

def stock_picker(arr)
  answer = []
  highest_value = 0
  buy = 0
  sell = 0

  for i in 0..(arr.length-1) do
    for j in (i+1)..(arr.length-1) do
      if arr[j] - arr[i] > highest_value
        highest_value = arr[j] - arr[i]
        buy = i
        sell = j
      end
    end
  end

  answer.push(buy)
  answer.push(sell)

  puts answer
end

stock_picker([3,6,10,1,7,6,17,13,5])
