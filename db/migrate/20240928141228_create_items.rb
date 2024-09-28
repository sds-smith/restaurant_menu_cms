class CreateItems < ActiveRecord::Migration[7.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.boolean :eightysix
      t.decimal :price
      t.integer :calories

      t.timestamps
    end
  end
end
