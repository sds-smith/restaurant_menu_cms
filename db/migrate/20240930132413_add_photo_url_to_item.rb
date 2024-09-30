class AddPhotoUrlToItem < ActiveRecord::Migration[7.2]
  def change
    add_column :items, :photo_url, :string
  end
end
