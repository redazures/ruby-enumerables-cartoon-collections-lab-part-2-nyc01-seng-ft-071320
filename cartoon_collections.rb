def square_array(array)
  # Use an Enumerable to square every element in the passed in array
  # Return a new array of the results
  array.map do |x|
    x*x
  end
end

#y=[2,3,4]
#p square_array(y)

def summon_captain_planet(planeteer_calls)
  # Use an Enumerable to capitalize and add '!' to every element in the passed in array
  # Return a new array of the results
  planeteer_calls.collect do |x|
    x.capitalize+"!"
  end

end
calls = ["earth", "wind", "fire", "water", "heart"]
calls1 = ["wind", "fire"]
calls2 = ["Cloud!", "earth", "Wind!", "cat", "Heart!"]
#p summon_captain_planet(calls)

def long_planeteer_calls(planeteer_calls)
  # Use an Enumerable to check if any string in the passed in array is greater than 4 characters long
  # Return the boolean result of this check
  planeteer_calls.any?{|str|str.size>4}
  #planeteer_calls.all?{|str|str.size<5}

end
#p long_planeteer_calls(calls)

def find_valid_calls(planeteer_calls)
  valid_calls = ["Earth!", "Wind!", "Fire!", "Water!", "Heart!"]
  # Use an Enumerable to check if any elements in the passed in array match the valid calls listed above
  # Return the first valid call found, or return nil if no valid calls are found
  planeteer_calls.select {|calls|valid_calls.include?(calls)}[0]
end

p find_valid_calls(calls2)
