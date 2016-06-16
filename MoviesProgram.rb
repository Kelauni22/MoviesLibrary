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
			 add = gets.chomp
			 MoviesProgram.add()
			 puts ("\n")
			 puts "What would you rate that movie?\n\n"
			 MoviesProgram.rate()
			 rate = gets.chomp
			 puts ("\n")
			 puts MoviesProgram.new_rate()
					
			
		elsif MoviesProgram.choice == "dl"
		
			puts "What movie would you like to delete?\n\n"
			input = gets.chomp
			puts ("\n")
			puts MoviesProgram._delete()
					
		
		elsif MoviesProgram.choice == "u"
		
			puts "What movie would you like to update? \n\n"
			movie = gets.chomp
			puts "\n\n"
			puts MoviesProgram.update()
		
			
		elsif MoviesProgram.choice =="q"
		
			puts "Are you sure you want to quit? Type 'y' for yes.\n\n"
			choice = gets.chomp.downcase
			MoviesProgram.quit()
			puts ("\n")
		
		end
						
								
	end