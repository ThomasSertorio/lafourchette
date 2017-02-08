class Restaurant < ApplicationRecord
  #  Association
  has_many  :reviews, dependent: :destroy

  # Validation
  validates :stars, inclusion: { in: [1,2,3], allow_nil: false }
  validates :name, uniqueness: true, presence: true
  validates :address, presence: {message: "Il manque une adresse"}
end
