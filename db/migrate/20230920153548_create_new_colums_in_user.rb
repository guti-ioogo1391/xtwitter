class CreateNewColumsInUser < ActiveRecord::Migration[7.0]
  def change
    create_table :new_colums_in_users do |t|
      add_column :users, :password, :string
      
    end

  end
end
