class AddFieldsToItem < ActiveRecord::Migration[7.2]
  def change
    add_column :items, :archived, :boolean
  end
end
