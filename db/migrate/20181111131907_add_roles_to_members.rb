class AddRolesToMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :admin, :boolean, default: false
    add_column :members, :gig_admin, :boolean, default: false
    add_column :members, :ordinary_member, :boolean, default: true
  end
end
