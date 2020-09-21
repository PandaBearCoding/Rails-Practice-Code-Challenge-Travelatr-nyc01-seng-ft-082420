class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts

    def most_liked
        self.posts.order(likes: :desc).limit(1)[0]  
    end 

    def average_age
        amount_of_bloggers = self.posts.map{|b| b.blogger}.uniq
        sum = amount_of_bloggers.map{|a| a.age}.sum / amount_of_bloggers.count
    end 

    
end
