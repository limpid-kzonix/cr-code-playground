module ItemSize
  def size
    items.size
  end
end

class Items
  include ItemSize

  def items
    [1,2,3]
  end
end
  items = Items.new
  puts items.size


