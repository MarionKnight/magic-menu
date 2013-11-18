class Menu < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true

  has_many :menitems
  has_many :items, :through => :menitems
end
