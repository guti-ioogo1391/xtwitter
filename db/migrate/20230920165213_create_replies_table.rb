class CreateRepliesTable < ActiveRecord::Migration[7.0]
  def change
    create_table :replies do |t|

      t.belongs_to :users
      t.belongs_to :tweets
      t.text :body
    end
  end
end
