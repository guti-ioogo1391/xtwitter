class CreateTablesForeingKeys < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :tweets, :users, column: :users_id

    add_foreign_key :likes, :users, column: :users_id
    add_foreign_key :likes, :tweets, column: :tweets_id

    add_foreign_key :replies, :users, column: :users_id
    add_foreign_key :replies, :tweets, column: :tweets_id

    add_foreign_key :taggins, :tweets, column: :tweets_id
    add_foreign_key :taggins, :hashtags, column: :hashtags_id
  end
end
