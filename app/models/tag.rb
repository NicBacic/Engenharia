class Tag < ApplicationRecord
  has_many :jogo_tags
  #has_many :tags, :through => :jogo_tags
 
end
