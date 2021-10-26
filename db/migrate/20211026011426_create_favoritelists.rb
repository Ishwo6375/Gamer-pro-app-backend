class CreateFavoritelists < ActiveRecord::Migration[6.1]
  def change
    create_table :favoritelists do |t|
      t.integer :user_id
      t.integer :game_id

      t.timestamps
    end
  end
end
