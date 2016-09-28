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

class Armadillo < Animal
	def move(destination)
		puts "#{@name} unrolls!"
		super(destination)
	end
end

	dillon= Armadillo.new
	dillon.name = "Dillon"
	dillon.move("burrow")


