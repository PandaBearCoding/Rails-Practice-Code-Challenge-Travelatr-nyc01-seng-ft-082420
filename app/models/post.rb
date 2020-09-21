class Post < ApplicationRecord
    belongs_to :blogger
    belongs_to :destination

    validates :content, length: {minimum: 100}

    def increment_likes
        # puts self.likes
        self.likes += 1
    end 
end
