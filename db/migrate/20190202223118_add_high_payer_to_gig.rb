class AddHighPayerToGig < ActiveRecord::Migration[5.2]
  def change
    add_column :gigs, :high_payer, :boolean
  end
end
