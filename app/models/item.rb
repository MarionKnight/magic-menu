class Item < ActiveRecord::Base
  validates :name, presence: true
  validates :price, presence: true

  has_many :menitems
  has_many :menus, :through => :menitems
end
