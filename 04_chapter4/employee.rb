class Employee
	attr_reader  :name, :salary
	def name=(name)
		if name == ""
			raise "Name can't be blank!"
		end
		@name = name
	end
	def salary=(salary)
		if salary < 0
			raise "A salary of #{salary} isn't valid!"
		end
		@salary = salary
	end
	def initialize(name = "Anonymous",salary = 0.0)
		self.name = name
		self.salary = salary
	end
	def print_pay_stub
		puts "Name: #{name}"
		pay_for_period = (salary/365.0) * 14
		formatted_pay = format("%.2f", pay_for_period)
		puts "Pay This Period: $#{formatted_pay}"
		
	end
end
Employee.new("Amy Blake", 50000).print_pay_stub
