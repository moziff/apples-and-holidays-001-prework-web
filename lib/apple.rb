def apple_picker_with_select(fruit_list)
  # fruit_list will look something like: ["apple", "banana", "apple"]
  # you want to return an array that just has apples in it

  fruit_list.select do |fruit|
    fruit=="apple"
  end
  
end

def apple_picker_with_collect(fruit_list)
  # fruit_list will look something like: ["apple", "banana", "apple"]
  # you want to return an array that just the apples, just like the 
  # challenge above
  result = fruit_list.collect { |fruit| fruit if fruit=="apple"}
  result.delete_if {|fruit| fruit!="apple"}
end