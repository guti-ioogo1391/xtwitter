class Tweet < ApplicationRecord
    belongs_to :user, foreign_key: 'users_id'
    validates :body, presence: true, length: { minimum: 255 }
end