class AddCharityToGig < ActiveRecord::Migration[5.2]
  def change
    add_column :gigs, :charity, :boolean
  end
end
