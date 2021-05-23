=begin
Write your code for the 'High Scores' exercise in this file. Make the tests in
`high_scores_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/high-scores` directory.
=end

#p "Hello"

class HighScores
    attr_accessor :scores
    def initialize(in_scores)
     @scores = in_scores
    end

    def scores
        @scores
    end

    def latest
        @scores.last
    end

    def personal_best
        @scores.max
    end

    def personal_top_three
        sorted = @scores.sort
        topthree = Array.new
        topthree << sorted.last 
        if (sorted[-2] != nil) 
            topthree << sorted[-2] 
        end
        if (sorted[-3] != nil) 
            topthree << sorted[-3] 
        end
        return topthree
    end
    
    def latest_is_personal_best?
        return self.latest == self.personal_best
    end

end

p HighScores.new([4,6]).personal_top_three