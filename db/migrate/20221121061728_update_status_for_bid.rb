class UpdateStatusForBid < ActiveRecord::Migration[7.0]
  def change
    remove_column :bids, :status, :boolean
    add_column :bids, :status, :integer, default: 0
  end
end
