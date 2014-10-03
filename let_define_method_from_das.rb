class Object
  def caca
    'caca'
  end
end

class Module
end

class Class
  def let(name, &block)
    define_method(:name) do
      yield
    end
  end
end

class User
  let(:name) do
    'gigi'
  end
end

user = User.new
puts user.name
puts 
puts '*user.eigenclass'
puts class << user; self; end
puts
puts '*User.ancestors' 
puts User.ancestors
puts
puts '*User.eigenclass.ancestors'
puts class << User; self; end
puts 
puts '*User.class.ancestors'
puts User.class.ancestors
puts 
puts '*User.class.eigenclass.ancestors'
puts class << User.class; self; end
puts
puts
puts user.caca
puts User.caca
puts Class.caca
puts Module.caca