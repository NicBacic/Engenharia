class AddConsoleToJogos < ActiveRecord::Migration[5.1]
  def change
    add_column :jogos, :console, :string
  end
end
