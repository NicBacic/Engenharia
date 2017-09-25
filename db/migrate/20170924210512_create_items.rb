class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :nome
      t.string :descricao
      t.decimal :preco

      t.timestamps
    end
  end
end
