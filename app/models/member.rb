class Member < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :gigs
  has_and_belongs_to_many :instruments

  has_and_belongs_to_many :gigs

  def admin_role
    return 'Admin' if admin?
    return 'Gig Admin' if gig_admin?
  end


  def full_name
    [first_name, last_name].join(' ')
  end
end
