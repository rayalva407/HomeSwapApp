class Trip < ApplicationRecord
  belongs_to :home
  belongs_to :user
  validates :start_date, presence: true
  validates :end_date, presence: true

  def self.future_trips
    where("start_date >= ?", Time.zone.today.beginning_of_day)
  end

  def self.past_trips
    where("start_date < ?", Time.zone.today.beginning_of_day)
  end

  def self.current_trips
    where("start_date <= :today AND end_date >= :today", today: Time.zone.today.beginning_of_day)
  end
end