require "MoviesClass"

describe Movies do

	describe ".questions" do
	
		context "given a choice letter" do	
			it "returns number of fifties" do
				cr = Movies.new
				result = cr.questions("a")
				expect(result).to eql(true)
			end
		end
	end		
end
