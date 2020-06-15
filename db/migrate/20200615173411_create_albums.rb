class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.column :name, :string
      t.column :artist, :string
      t.column :cover_image, :string
      t.column :link, :string
      t.column :discog_id, :integer

      t.timestamps()
    end
  end
end
