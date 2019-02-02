class Gig < ApplicationRecord
  belongs_to :gig_admin, class_name: 'Member'
  has_and_belongs_to_many :members
  validate :check_gig_admin_has_permission

  def players
    members
  end

  def trumpet_players
    trumpeters = []
    players.each do |p|
      trumpeters << p if p.instrument_list.include? 'Trumpet'
    end
    trumpeters
  end

  def tenor_sax_players
    t_saxes = []
    players.each do |p|
      t_saxes << p if p.instrument_list.include? 'Tenor Sax'
    end
    t_saxes
  end

  def bass_players
    t_saxes = []
    players.each do |p|
      t_saxes << p if p.instrument.include? 'Tenor Sax'
    end
    t_saxes
  end

    def tenor_sax_players
    t_saxes = []
    players.each do |p|
      t_saxes << p if p.instrument_list.include? 'Tenor Sax'
    end
    t_saxes
  end

    def tenor_sax_players
    t_saxes = []
    players.each do |p|
      t_saxes << p if p.instrument_list.include? 'Tenor Sax'
    end
    t_saxes
  end

  private

  def check_gig_admin_has_permission
    errors.add(:gig_admin, 'is not allowed') unless gig_admin.gig_admin?
  end
end
