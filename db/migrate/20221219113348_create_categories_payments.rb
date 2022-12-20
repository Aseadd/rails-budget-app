class CreateCategoriesPayments < ActiveRecord::Migration[7.0]
  def change
    create_table :categories_payments do |t|
      t.belongs_to :category, null: false, foreign_key: true
      t.belongs_to :payment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
