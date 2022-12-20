class Payment < ApplicationRecord
    belongs_to :user
    has_many :categories_payments
    has_many :categories, through: :categories_payments, source: :category

    validates :amount, presence: true, numericality: { greater_than: 0 }
    validates :name, presence: true, length: { minimum: 2, maximum: 50 }

end
