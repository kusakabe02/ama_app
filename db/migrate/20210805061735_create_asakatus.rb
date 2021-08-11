class CreateAsakatus < ActiveRecord::Migration[6.1]
  def change
    create_table :asakatus do |t|
      t.bigint :users_id
      t.string :title
      t.text :memo
      t.boolean :private_flag

      t.timestamps
    end
  end
end
