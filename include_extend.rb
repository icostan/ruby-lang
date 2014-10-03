module M1
  def m1
    'm1'
  end
end
module M2
  def m2
    'm2'
  end
end

class A
end

A.send :include, M2

a = A.new
puts a.m2
puts "a instance methods: #{a.methods.size} - #{a.methods.grep(:m2)}"
puts "a singleton methods: #{a.singleton_methods.size} - #{a.singleton_methods.grep(:m2)}"

A.extend M1
puts A.m1
puts "A instance methods: #{A.instance_methods.size} - #{A.instance_methods.grep(:m1)}"
puts "A singleton methods: #{A.singleton_methods.size} - #{A.singleton_methods.grep(:m1)}"

puts
puts A.ancestors
puts
puts class << A; self; end.ancestors