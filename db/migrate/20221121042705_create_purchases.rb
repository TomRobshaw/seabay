class CreatePurchases < ActiveRecord::Migration[7.0]
  def change
    create_table :purchases do |t|
      t.boolean :status, null: false, default: ""
      t.references :bids, foreign_key: true
      t.timestamps
    end
  end
end
