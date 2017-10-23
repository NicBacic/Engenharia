class CreateUsuarioAvaliaJogos < ActiveRecord::Migration[5.1]
  def change
    create_table :usuario_avalia_jogos do |t|
      t.integer :user_id
      t.integer :jogo_id
      t.integer :avaliacao

      t.timestamps
    end
    add_foreign_key :usuario_avalia_jogos, :users, column: :user_id
    add_foreign_key :usuario_avalia_jogos, :jogos, column: :jogo_id
  end
end
