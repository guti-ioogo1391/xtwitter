class CreateUsernameColumn < ActiveRecord::Migration[7.0]
  def change
    create_table :username_columns do |t|
      add_column :users, :username, :string
    end
  end
end
