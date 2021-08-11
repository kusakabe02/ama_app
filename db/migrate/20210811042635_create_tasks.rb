class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.bigint :asakatu_id
      t.string :name
      t.boolean :status_flag

      t.timestamps
    end
  end
end
