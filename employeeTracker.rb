
require_relative "employeeTrackerClasses.rb"

def menu
	puts "Hello, welcome to the employee tracker."
	puts "What would you like to do today? "
	puts "1. Create new record"
	puts "2. View an existing record"
	puts "3. Modify an existing record"
	menu = gets.chomp.to_i
	case menu
		when 1
			system "cls"
			create
		when 2
			system "cls"
			view
		when 3
			system "cls"
			modify
		else
			system "cls"
			puts "Invalid selection."
			menu
	end
end

@employees = []

def create

completion = false

puts "Enter employee data. 
Type 'done' when finished."

	while completion == false
	    print "Name: "
	    name = gets.chomp
	   		if name == "done"
	        	completion = true
	       	menu
	    	end
	    print "Role: "
	    role = gets.chomp
	    print "Location: "
	    location = gets.chomp

	    @employee = Employee.new(name, role, location)
	    @employees.push(@employee)
	    puts "Employee info saved."
	    puts @employees.length
	end
	menu
end

def view 
	if @employees.length == 0
        puts "No employees logged, please enter employee information."
        create
    else    
		puts "Which employee record would you like to view?"
		name = gets.chomp
		@employees.each_with_index do |emp, ind|
			if emp.name.downcase == name.downcase
				puts "The employee record is for:\n\t#{@employees[ind].name}\n\t#{@employees[ind].role}\n\t#{@employees[ind].location}"
				puts "\n\n(pres any key to return to the menu)"
				gets.chomp
				menu
			end
		end
		puts "No employee record for #{name}."
				sleep(4)
				menu
	end
end

def modify 
	puts "Which employee record would you like to change?"
	name = gets.chomp
	@employees.each_with_index do |emp, ind|
			if emp.name.downcase == name.downcase
				puts name
			end	
	end
	puts "What information would you like to change? "
	puts "1. Role: "
	puts "2. Location: "
	ans = gets.chomp.to_i
	case ans
	when 1
		puts "What is your employee's new role?"
        @new_role = gets.chomp
	when 2
		puts "What is the employee's new location?"
        @new_location =  gets.chomp
	end
	puts "Would you like to change another employees info?"
	puts "1. Change another"
	puts "2. Go back to menu"
	nav = gets.chomp.to_i
	case nav
	when 1
		modify
	when 2
		menu
end
end

menu