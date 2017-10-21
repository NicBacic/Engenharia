class Reviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :jogo_id
      t.integer :user_id
      t.string :texto

      t.timestamps
    end
  add_foreign_key :reviews, :users, column: :user_id
  add_foreign_key :reviews, :jogos, column: :jogo_id
  end
end
