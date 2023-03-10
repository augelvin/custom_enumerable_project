module Enumerable
  # Your code goes here
  def my_each_with_index
    i = 0
    for n in self do
      yield(n, i)
      i += 1
    end
  end

  def my_select
    selected = []
    for n in self do
      selected << n if yield(n)
    end
    selected
  end

  def my_all?
    for n in self do
      if !yield(n)
        return false
      end
    end
    true
  end



end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    for i in self do
      yield(i)
    end
  end

end