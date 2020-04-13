class CreateRecentlyPlayeds < ActiveRecord::Migration[5.2]
  def change
    create_table :recently_playeds do |t|
      t.references :user, foreign_key: true
      t.references :album, foreign_key: true

      t.timestamps
    end
  end
end
