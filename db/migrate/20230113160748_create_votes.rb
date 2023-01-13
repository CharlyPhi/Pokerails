class CreateVotes < ActiveRecord::Migration[7.0]
  def change
    create_table :votes do |t|
      t.string :description
      t.integer :number

      t.timestamps
    end
  end
end
