class Member < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :gigs
  belongs_to :instrument

  has_and_belongs_to_many :gigs

  scope :trumpeters, -> { joins(:instrument).where('instruments.name = ?', 'Trumpet')}
  scope :boners, -> { joins(:instrument).where('instruments.name = ?', 'Trombone')}

  scope :soprano_saxes, -> { joins(:instrument).where('instruments.name = ?', 'Soprano Sax')}
  scope :alto_saxes, -> { joins(:instrument).where('instruments.name = ?', 'Alto Sax')}
  scope :tenor_saxes, -> { joins(:instrument).where('instruments.name = ?', 'Tenor Sax')}
  scope :bari_saxes, -> { joins(:instrument).where('instruments.name = ?', 'Baritone Sax')}

  scope :basses, -> { joins(:instrument).where('instruments.family = ?', 'bass')}
  scope :drummers, -> { joins(:instrument).where('instruments.family = ?', 'percussion')}
  scope :saxes, -> { joins(:instrument).where('instruments.family = ?', 'saxophone')}
  scope :horms, -> { joins(:instrument).where('instruments.family = ?', 'horn')}

  scope :vocalist, -> { where(first_name: 'Leigh')}
  def admin_role
    return 'Admin' if admin?
    return 'Gig Admin' if gig_admin?
  end

  def full_name
    [first_name, last_name].join(' ')
  end
end
