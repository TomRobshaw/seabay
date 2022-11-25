class RemoveStatusFromListings < ActiveRecord::Migration[7.0]
  def change
    remove_column :listings, :status, :string
  end
end
