class Category < ApplicationRecord
    belongs_to :user
    has_many :categories_payments
    has_many :payments, through: :categories_payments, source: :payment

    validates :name, presence: true, length: { minimum: 2, maximum: 50 }


    def total_amount
        total = 0
        payments.each do |payment|
            total += payment.amount
        end
        total
    end

end
