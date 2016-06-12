class Movies

#Create hash for movies already stored

MoviesRatings= {

"Django Unchained" => 4.5,
"A Goofy Movie" => 5,
"Zoolander" => 2.5,
"The Notebook" => 5,
"American Pie" => 3.5,
"Love Jones" => 1
}

	
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
				 MoviesRatings.each do |x,y|
				 puts "#{x} has a rating of #{y}"	
				 end
					
		
			puts ("\n")
			
			when "a" 

				 puts "\n What movie would you like to add? \n\n"
				 add = gets.chomp
				 puts ("\n")
				 				 
				 if MoviesRatings[add].nil?
					 puts "What would you rate that movie?\n\n"
					 rate = gets.chomp
					 puts ("\n")
					 MoviesRatings[add] = rate.to_i
					 puts "The movie #{add} and the rating of #{rate} have been added to your movie library. \n\n"
				else
					puts ("I'm sorry, that movie already exists. The rating is #{MoviesRatings[add]}. \n\n")
				end
				
			when "dl"
			
				puts "What movie would you like to delete?\n\n"
				delete = gets.chomp
				puts ("\n")
				
				if MoviesRatings[delete].nil?
					puts "Sorry, that movie does not exist!"
				else
					MoviesRatings.delete(delete)
					puts "The movie #{delete} has been deleted successfully!\n\n"
				end
			
			when "u"
			
				puts "What movie would you like to update? \n\n"
				movie = gets.chomp
				puts "\n\n"
				
				if MoviesRatings[movie].nil?
					puts "Sorry, that movie does not exist! \n\n"
				else
				puts "What is the new rating?\n\n"
				rating = gets.chomp.to_i
				
				MoviesRatings[movie] = rating
				puts "\n\n The movie #{movie} has been udpated to a rating of #{rating}\n\n"
				end
			
			when "q"
			
			puts "Are you sure you want to quit? Type 'y' for yes.\n\n"
			choice = gets.chomp.downcase
			
			
				if (choice == "y")
				break
				
				end
				
				
			
			end
			
		
		
	end
end






