class Parent
  def altered()
    puts "PARENT altered()"
  end
end

class Child < Parent
  def altered()
    puts "CHILD, BEFORE PARENT altered()"
    super() #aware of inheritance and will get the parent class for you. 
    puts "CHILD, AFTER PARENT altered()"
  end

end

dad = Parent.new()
son = Child.new()

dad.altered()
son.altered()
