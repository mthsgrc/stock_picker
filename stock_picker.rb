stock_array = [17,3,6,9,15,8,6,1,10] #0 8    length > 9

def stock_picker(array)

  best_day_array = []
  best_profit = nil

  array.each_with_index do |price, i|

    for j in (i..array.length - 1)

      profit = array[j] - price

      if best_profit == nil || profit > best_profit
        best_profit = profit
        
        best_day_array = [i, j]

      end
    end
  end

  p best_day_array

end


stock_picker(stock_array)
