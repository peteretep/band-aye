class AddPlayersToGigs < ActiveRecord::Migration[5.2]
  def change
    create_join_table :gigs, :members do |t|
      t.index [:gig_id, :member_id]
    end
  end
end
