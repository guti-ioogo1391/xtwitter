class CreateHashTagTable < ActiveRecord::Migration[7.0]
  def change
    create_table :hashtags do |t|
      t.string :body
    end
  end
end
