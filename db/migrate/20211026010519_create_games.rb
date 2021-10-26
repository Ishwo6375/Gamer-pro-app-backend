class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :title
      t.string :description
      t.integer :likes
      t.integer :dislikes
      t.string :image
      t.string :video_url
      t.integer :rating
      t.boolean :liked
      t.boolean :disliked
      t.integer :genre_id

      t.timestamps
    end
  end
end
