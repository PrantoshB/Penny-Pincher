class Category < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :payments, dependent: :destroy

  validates :name, presence: true, length: { maximum: 50 }
  validates :icon, presence: true
end
