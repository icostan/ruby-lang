module M
  def m
    'm'
  end
end

class C
end

c = C.new
c.extend M

puts c.m
puts "c.singleton_methods: #{c.singleton_methods.size} - #{c.singleton_methods.grep(:m)}"
puts
puts c.class.object_id
puts c.class.ancestors
puts
puts class << c; self; end.object_id
puts class << c; self; end.ancestors
puts
puts C.class.object_id
puts C.class.ancestors
