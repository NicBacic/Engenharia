class CreateSearches < ActiveRecord::Migration[5.1]
  def change
    create_table :searches do |t|
      t.string :nome
      t.string :console
      t.string :publisher
      t.string :desenvolvedora
      t.decimal :min_rating
      t.decimal :max_rating

      t.timestamps
    end
  end
end
