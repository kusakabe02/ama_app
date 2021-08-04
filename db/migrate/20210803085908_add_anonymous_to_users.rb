class AddAnonymousToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :anonymous, :boolean
  end
end
