class Person
end

Person.class_eval do
  def self.name
    'Matz'
  end
end

puts Person.name
puts Person.new.name

class Person
end
puts Person.class

class Class
  def loud_name
    "#{name.upcase}!"
  end
end
puts Person.loud_name


class U
  def hoge
    def self.fuga
      'fuga'
    end
    'hoge'
  end
end
u = U.new  
puts u.hoge  
puts u.method(:fuga)
class << u
  puts instance_method(:fuga)
end
puts U.instance_method(:fuga)


class Person; end
Person.instance_eval{ puts self }

class Person; end
Person.class_eval{ puts self }

class Foo
  def self.baz
    'baz'
  end
end

class Bar
  class << self
    def baz
      'baz'
    end
  end
end

puts Foo.name
puts Class.name

puts Foo.method :baz
puts Bar.method :baz
