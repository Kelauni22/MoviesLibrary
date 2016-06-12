require './lib/MoviesClass.rb'

MoviesProgram = Movies.new

while loop = true
		questions()
		

		#Display your movies
		case choice
			when "d"
				 puts ("Here is your movie library: \n\n")
				 display()
				 puts ("\n")
			
			when "a" 

				 puts "\n What movie would you like to add? \n\n"
				 add()
				 puts ("\n")
				 puts "What would you rate that movie?\n\n"
				 rate()
				 new_rate()
				
			when "dl"
			
				puts "What movie would you like to delete?\n\n"
				delete()
			
			when "u"
			
				puts "What movie would you like to update? \n\n"
				movie = gets.chomp
				puts "\n\n"
				update()
				
				
			
			when "q"
			
			puts "Are you sure you want to quit? Type 'y' for yes.\n\n"
			choice = gets.chomp.downcase
			quit(choice)
			
			
							
			
			end
			
		
		
	end