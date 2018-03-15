class RouletteWheel < ApplicationRecord
  belongs_to :user
  has_many :entries
  after_initialize :set_defaults

  def set_defaults
    self.width ||= 512;
    self.height ||= 512;
  end
end