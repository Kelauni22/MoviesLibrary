require './lib/MoviesClass.rb'

MoviesProgram = Movies.new

loop = true
while loop == true

		MoviesProgram.questions()
		

		#Display your movies
		
		if MoviesProgram.choice == "d"
			 puts ("Here is your movie library: \n\n")
			 puts MoviesProgram.display()
		
			 puts ("\n")
		
		
		elsif MoviesProgram.choice == "a" 

			 puts "\n What movie would you like to add? \n\n"
			 MoviesProgram.add()
			 puts ("\n")
			 puts "What would you rate that movie?\n\n"
			 MoviesProgram.rate()
			 puts ("\n")
			 puts MoviesProgram.new_rate()
					
			
		elsif MoviesProgram.choice == "dl"
		
			puts "What movie would you like to delete?\n\n"
			MoviesProgram._delete()
					
		
		elsif MoviesProgram.choice == "u"
		
			puts "What movie would you like to update? \n\n"
			movie = gets.chomp
			puts "\n\n"
			MoviesProgram.update()
		
			
		elsif MoviesProgram.choice =="q"
		
			puts "Are you sure you want to quit? Type 'y' for yes.\n\n"
			choice = gets.chomp.downcase
			MoviesProgram.quit(choice)
		
		else
		
			puts "That wasn't one of the choices! Try again."
		
			
		
		end
						
								
	end