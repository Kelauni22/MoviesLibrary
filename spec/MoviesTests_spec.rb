require "MoviesClass"

describe Movies do

	describe ".display hardcoded" do
	
		context "when running the function" do	
			it "displays the hash that I made" do
				cr = Movies.new
				result = cr.display()
				expect(result).to eql( "Django Unchained has a rating of 4.5 \nA Goofy Movie has a rating of 5 \nZoolander has a rating of 2.5 \nThe Notebook has a rating of 5 \nAmerican Pie has a rating of 3.5 \nLove Jones has a rating of 1 \n")
			end
		end
	end	

	describe ".display" do
	
		context "when given a new movie and rating" do	
			it "returns that movie and rating" do
				cr = Movies.new
				cr.moviesratings = {"Dumbo" => 4.0}
				result = cr.display()
				expect(result).to eql("Dumbo has a rating of 4.0 \n")
			end
		end
	end	
	
	describe ".add" do
	
		context "when given an add input" do	
			it "it returns that same input" do
				cr = Movies.new
				cr.add = "add"
				result = cr.add()
				expect(result).to eql("add")
			end
		end
	end	
end
