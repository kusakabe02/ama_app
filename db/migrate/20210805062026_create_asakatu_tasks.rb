class CreateAsakatuTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :asakatu_tasks do |t|
      t.bigint :Asakatu_id
      t.string :task_name
      t.boolean :status_flag

      t.timestamps
    end
  end
end
