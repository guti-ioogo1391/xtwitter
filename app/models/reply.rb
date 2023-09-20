class Reply < ApplicationRecord

    belongs_to :user, foreign_key: 'users_id'
    belongs_to :tweet, foreign_key: 'tweets_id'
  
    validates :body, presence: true, length: { minimum: 255 }
    
end