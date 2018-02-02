class Background < ActiveRecord::Base

  validates :name, presence: true
  validates :age, presence: true
  validates :sex, presence: true
  validates :country, presence: true
  validates :occupation, presence: true
  validates :religion, presence: true
  validates :living_will, presence: true

  belongs_to :user
  has_many :medicines, dependent: :destroy

end
