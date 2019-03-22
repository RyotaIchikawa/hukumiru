class RenameContentColumnToMicroposts < ActiveRecord::Migration[5.1]
  def change
    rename_column :microposts, :content, :item_name
  end
end
