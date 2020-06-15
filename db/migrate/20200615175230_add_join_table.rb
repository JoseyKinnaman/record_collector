class AddJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_table :albums_users, id: false do |t|
      t.belongs_to :album, index: true
      t.belongs_to :user, index: true
    end
  end
end
