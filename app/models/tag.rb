class Tag < ActiveRecord::Base
  validates :name, presence: true
  validates_uniqueness_of :name, case_sensitive: false

  has_and_belongs_to_many :blogs
end
