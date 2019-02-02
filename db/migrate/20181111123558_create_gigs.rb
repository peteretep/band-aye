class CreateGigs < ActiveRecord::Migration[5.2]
  def change
    create_table :gigs do |t|
      t.string :title
      t.string :where
      t.datetime :when
      t.string :band_contact
      t.string :event_contact
      t.boolean :confirmed
      t.text :about
      t.belongs_to :gig_admin, class_name: 'Member'
      t.timestamps
    end
  end
end
