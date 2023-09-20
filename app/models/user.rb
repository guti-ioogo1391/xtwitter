class User < ApplicationRecord
    has_many :bookmarks, foreign_key: 'users_id'
    has_many :tweets, foreign_key: 'users_id'
    
    has_many :follower_relationships, foreign_key: 'follower_user_id', class_name: 'Follower'
    has_many :following_relationships, foreign_key: 'following_user_id', class_name: 'Follower'
    has_many :followers, through: :follower_relationships, source: 'follower_user'
    has_many :following, through: :following_relationships, source: 'following_user'
    
    has_many :likes, foreign_key: 'users_id'

    # Add presence validation for email and username
    # Add Uniqueness validation for email and username
    # Add presence validation for password
    # Add Length validation of 12 characters minimum
    # Add Format validation At least 1 uppercase letter, at least 1 lowercase letter, at least 1 number and at least 1 special character like !@/*-+_
     
    validates :email, :username, presence: true, uniqueness: true
    validates :password, presence: true, format: {/^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@/*\-+_]).+$/}, length: { minimum: 12 }
end