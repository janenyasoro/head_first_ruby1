class Animal
	attr_reader :name, :age
	def name=(value)
		if value == " "
			raise "Name can't be blank!"
		end
		@name = value
	end
	def age=(value)
		if value < 0
			raise "An age of #{value} isn't valid!"
		end
		@age = value
	end
	def talk 
		puts "#{name} says Bark!"
	end
	def move(destination)
		puts "#{@name} runs to the #{@destination}"
	end
	def report_age
		puts "#{@name} is #{@age} years old"
	end
end
class Dog < Animal
end
class Bird < Animal
end
class Cat < Animal
end

whiskers = Cat.new
whiskers.name = "Whiskers"
fido = Dog.new
fido.name = "Fido"
polly = Bird.new
polly.name = "Polly"

polly.age = 2
polly.report_age
fido.move("yard")
whiskers.talk

puts Dog.superclass
puts Animal.superclass
