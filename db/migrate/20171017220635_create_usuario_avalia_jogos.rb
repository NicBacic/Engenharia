class CreateUsuarioAvaliaJogos < ActiveRecord::Migration[5.1]
  def change
    create_table :usuario_avalia_jogos do |t|
      t.integer :id_user
      t.integer :id_jogo
      t.integer :avaliacao

      t.timestamps
    end
  add_foreign_key :usuario_avalia_jogos, :users, column: :id_user
  add_foreign_key :usuario_avalia_jogos, :jogos, column: :id_jogo
  end
end
