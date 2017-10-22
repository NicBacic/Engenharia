class CreateJogosTagsJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :jogos, :tags do |t|
      t.index :jogo_id
      t.index :tag_id
    end
  end
end
