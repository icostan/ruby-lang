module M
  def m
    'm'
  end
end

class A
end

class B < A
end

A.extend M
puts "A.singleton_methods: #{A.singleton_methods.grep(:m)}"
puts "B.singleton_methods: #{B.singleton_methods.grep(:m)}"