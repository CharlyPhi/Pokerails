class CreateFavorites < ActiveRecord::Migration[7.0]
  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.string :name
      t.integer :height
      t.integer :weight

      t.timestamps
    end
  end
end
