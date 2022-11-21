class CreateBids < ActiveRecord::Migration[7.0]
  def change
    create_table :bids do |t|
      t.float :value, null: false, default: ""
      t.boolean :status, null: false, default: ""
      t.references :listings, foreign_key: true
      t.references :users, foreign_key: true
      t.timestamps
    end
  end
end
