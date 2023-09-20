class CreateBookmarkForeingKeys < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :bookmarks, :users, column: :users_id
    add_foreign_key :bookmarks, :tweets, column: :tweets_id
    
  end
end
