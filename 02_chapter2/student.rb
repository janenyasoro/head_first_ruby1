class Student
	def age= (age)
		@age = age
	end
	def age
		@age
		puts "#{@age}"
	end
	def grade= (grade)
		@grade = grade
	end
	def grade
		@grade
		puts "#{@grade}"
	end
	def form= (form)
		@form = form
	end
	def form
		@form
		puts "#{@form}"
	end
end
jane = Student.new
jane.age=15
jane.grade= "B"
jane.form= 1

jane.age
jane.grade
jane.form
  