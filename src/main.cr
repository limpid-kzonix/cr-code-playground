class MyClass

  def to_s(io)
    x = 1
    y = 2
    io << x << ", " << y
  end
end

class MyBadClass

  def to_s(io)
    x = 1
    y = 2
    io << "#{x}, #{y}"
  end
end


# Benchmark

require "benchmark"
io = IO::Memory.new

Benchmark.ips do |x|
  x.report("without to_s") do
    io << 123
    io.clear
  end

  x.report("with to_s") do
    io << 123.to_s
    io.clear
  end
end

Benchmark.ips do |x|
  x.report("Good class to_s") do
    io << MyClass.new
    io.clear
  end

  x.report("Bad class to_s") do
    io << MyBadClass.new
    io.clear
  end
end


