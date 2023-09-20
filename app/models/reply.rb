class Reply < ApplicationRecord

    belongs_to :user
    belongs_to :tweet
  
    # Validations
    validates :body, presence: true
    
end