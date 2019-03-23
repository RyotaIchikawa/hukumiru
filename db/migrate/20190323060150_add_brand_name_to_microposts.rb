class AddBrandNameToMicroposts < ActiveRecord::Migration[5.1]
  def change
    add_column :microposts, :brand_name, :string
  end
end
