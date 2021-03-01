class RenameTittleColumnToTitle < ActiveRecord::Migration[6.0]
  def change
    rename_column :tasks, :tittle, :title
  end
end
