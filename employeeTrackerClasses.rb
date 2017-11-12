# Create a Ruby program that acts as a employee record tracker. (**personnel_system.rb**)
# There will be a class called "Employee". With at least these attributes:
# 	* name
# 	* role (or occupation)
# 	* location
# Let's assume our company has multiple locations. For an extra method, create one that transfers the employee to another location. (Location could even be a separate Class!)
# The program will allow the user to create a new employee record, view and modify an existing record.
# This program will have a similar structure to the Bank program. 
# Good luck!

class Employee
	attr_accessor :name, :role, :location
	def initialize (name, role, location)
		@name = name
		@role = role
		@location = location
	end

	def change_role(new_role)
		@role = new_role
	end
	
	def change_location(new_location)
		@location = new_location
	end
end