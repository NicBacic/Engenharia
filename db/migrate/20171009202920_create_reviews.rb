class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :texto
      t.string :nome_do_jogo

      t.timestamps
    end
  end
end
