require './lib/MoviesClass.rb'

MoviesProgram = Movies.new

while loop = true
		puts "Which would you like to do? \n \n"
		puts "a.) To display full list of movies, type 'd'"
		puts "b.) To add a new movie and rating to your list, type 'a'"
		puts "c.) To delete a movie from your list, type 'dl'"
		puts "d.) To update a movie in your list, type 'u'"
		puts "e.) To quit, type 'q'"
		
		
		puts("\n")
		choice = gets.chomp
		puts("\n")
		

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
			
			
							
			
			end
			
		
		
	end