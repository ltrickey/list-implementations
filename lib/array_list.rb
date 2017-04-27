# Implementation of a list using a Native array --> ruby does this automatically

class ArrayList #simulation of JAVA ArrayList
  def initialize
    #pretending that @storage is a naitive array: fixed capacity, indexing only
    #Underlying data structure.
    @storage = [0,0,0,0,0,0,0,0,0,0]
    @size = 0 #manual tracking of what's in the array, not capacity, size
  end

  # Adds _value_ at the end of the list
  def add(value) #only from the end for today
    raise "bad things" if size == 10
    @storage[@size] = value
    @size += 1
  end

  # Deletes the _last_ value in the array
  def delete #only from the end for today
    raise "bad things" if size == 0
    # @storage[@size - 1] = 0 Don't really need this b/c other values are placeholders
    @size -= 1
  end

  def include?(key)
    @size.times do |i|
      return true if @storage[i] == key
    end
    return false
  end

  def size
    @size #constant time efficiency
  end

  def max #returns first max element
    raise "bad things" if size == 0
    largest = @storage[0] #better to make placeholder something in actual array
    #not a random thing, b/c don't want to mess up your data!
    @size.times do |i|
      if @storage[i] > largest
        largest = @storage[i]
      end
    end
    return largest
  end

  def to_s
    str = ""
    @size.times do |i|
      str += "#{@storage[i]}, "
    end
    return "[#{str[0..-3]}]" #cuts off last comma and space after last element
  end

  def removeAll(num)
    index = @size - 1
    (@size - 1).times do
      if @storage[index] == 3
        if index < (@size - 1)
          
  end

end
