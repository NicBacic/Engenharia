class CreateJogos < ActiveRecord::Migration[5.1]
  def change
    create_table :jogos do |t|
      t.string :nome
      t.string :publisher
      t.string :desenvolvedora
      t.decimal :preco
      t.float :rating
      t.integer :idadeRecomendada

      t.timestamps
    end
  end
end
