class Url < ApplicationRecord

  validates :long_url,
      :uniqueness => true,
      :presence => true,
      :format => { :with => /http(s)*:\D\D\w+(.)\w+(.\D)*/}

  validates :short_url,
      :uniqueness => true

  before_create :shorten

  def shorten
      self.short_url = SecureRandom.hex(4)
  end 

end
