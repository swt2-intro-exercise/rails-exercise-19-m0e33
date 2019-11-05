class Author < ApplicationRecord

  def name
    self.first_name + ' ' + self.last_name
  end

  validates :last_name, presence: true

end
