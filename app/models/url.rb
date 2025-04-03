class Url < ApplicationRecord
  before_create :generate_short_code

  def generate_short_code
    self.shortened = SecureRandom.alphanumeric(6)
  end
end
