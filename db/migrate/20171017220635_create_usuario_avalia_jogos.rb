class CreateUsuarioAvaliaJogos < ActiveRecord::Migration[5.1]
  def change
    create_table :usuario_avalia_jogos do |t|
      t.integer :id_user
      t.integer :id_jogo
      t.integer :avaliacao

      t.timestamps
    end
  add_foreign_key :usuarioAvaliaJogos, :users
  add_foreign_key :usuarioAvaliaJogos, :jogos
  end
end
