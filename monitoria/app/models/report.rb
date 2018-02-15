class Report < ApplicationRecord
  belongs_to :subscription

  validates :tipo, presence: true, inclusion:{in: %w(acompanhamento parial final)}
end
