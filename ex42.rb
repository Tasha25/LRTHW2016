## Animal is-a object look at the extra credit
class Animal
end

## Dog is-a Animal
class Dog < Animal

  def initialize(name)
    ## @name has-a name
    @name = name
  end
end

## Cat is-a Animal
class Cat < Animal

  def initialize(name)
    ## Cat has-a name
    @name = name
  end
end

## Person is-a object
class Person

  def initialize(name)
    ## Person has-a name
    @name = name

    ## Person has-a pet of some kind
    @pet = nil
  end

  attr_accessor :pet
end

## Employee is-a Person
class Employee < Person

  def initialize(name, salary)
    ## ?? hmm what is this strange magic?
    super(name)
    ## ??
    @salary = salary
  end

end

## Fish is-a object
class Fish
end

## Salmon is-a Fish
class Salmon < Fish
end

## Halibut is-a Fish
class Halibut < Fish
end


## rover is-a Dog
rover = Dog.new("Rover")

## satan is-a Cat
satan = Cat.new("Satan")

## mary is-a Person
mary = Person.new("Mary")

## from mary get the pet attribute and set it to satan
mary.pet = satan

## set frank to a new instance of Emmployee that takes the parameters "Frank" and 120000.
frank = Employee.new("Frank", 120000)

## from frank get the pet attribute and set it to rover
frank.pet = rover

## set flipper to a new instance of Fish
flipper = Fish.new()

## set crouse to a new instance of Salmon
crouse = Salmon.new()

## set harry to a new instance of Halibut
harry = Halibut.new()
