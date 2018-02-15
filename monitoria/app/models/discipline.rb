class Discipline < ApplicationRecord
  has_many :subscriptions

  validates :descricao, presence:true
  validates :abreviacao, presence:true
end
