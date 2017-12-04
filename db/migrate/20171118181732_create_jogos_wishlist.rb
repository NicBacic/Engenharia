class CreateJogosWishlist < ActiveRecord::Migration[5.1]
  def change
    create_table :jogos_wishlists do |t|
      t.integer :wishlist_id
      t.integer :jogo_id
    end
  end
end
