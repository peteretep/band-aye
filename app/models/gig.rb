class Gig < ApplicationRecord
  belongs_to :gig_admin, class_name: 'Member'
  has_and_belongs_to_many :members
  
  validate :check_gig_admin_has_permission

  def check_gig_admin_has_permission
    unless gig_admin.gig_admin?
      errors.add(:gig_admin, 'is not allowed')
    end
  end
end
