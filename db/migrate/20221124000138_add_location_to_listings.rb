class AddLocationToListings < ActiveRecord::Migration[7.0]
  def change
    add_column :listings, :location, :string
  end
end
