class ChangeDataItemNameToMicroposts < ActiveRecord::Migration[5.1]
  def change
    change_column :microposts, :item_name, :string
  end
end
