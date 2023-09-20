class Like < ApplicationRecord
    belongs_to :user, foreign_key: 'users_id'
    belongs_to :tweet, foreign_key: 'tweets_id'

    validates :users_id, :tweets_id, presence: true, uniqueness: true
end