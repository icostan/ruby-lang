natural_numbers = Enumerator.new do |yielder|
  number = 1
  loop do
    break if number > 100
    yielder.yield number
    number += 1
  end
end

natural_numbers.each { |n| puts n }
