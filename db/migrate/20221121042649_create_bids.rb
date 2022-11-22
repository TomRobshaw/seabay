class CreateBids < ActiveRecord::Migration[7.0]
  def change
    create_table :bids do |t|
      t.float :value, null: false, default: ""
      t.boolean :status, null: false, default: ""
      t.references :listing, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
