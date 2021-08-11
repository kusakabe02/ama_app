class DropTableAsakatuTasks < ActiveRecord::Migration[6.1]
  def change
    drop_table :asakatu_tasks
  end
end
