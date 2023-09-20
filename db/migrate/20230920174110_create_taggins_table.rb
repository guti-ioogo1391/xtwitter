class CreateTagginsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :taggins do |t|
      t.belongs_to :tweets
      t.belongs_to :hashtags
    end
  end
end
