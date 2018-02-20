class Review < ActiveRecord::Base
  belongs_to :background

  validates :background_id, uniqueness: true

end
