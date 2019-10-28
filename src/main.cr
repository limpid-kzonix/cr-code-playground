module ItemSize
  def size
    items.size
  end
end
# TODO: investigate how to add docs for code
class Items
  include ItemSize

  def items
    [1,2,3]
  end
end

a = ->(x: Int32, y: Int32) { x + y }

res1 = a.call(2, 3)

puts res1

items = Items.new
puts items.size
