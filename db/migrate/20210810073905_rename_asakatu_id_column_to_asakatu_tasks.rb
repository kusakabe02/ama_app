class RenameAsakatuIdColumnToAsakatuTasks < ActiveRecord::Migration[6.1]
  def change
    #間違えて登録したカラム名を修正
    rename_column :asakatu_tasks, :Asakatu_id, :asakatu_id
  end
end
