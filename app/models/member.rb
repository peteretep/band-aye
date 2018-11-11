class Member < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :gigs

  has_and_belongs_to_many :gigs
  
  def full_name
    [first_name, last_name].join(' ')
  end
end
