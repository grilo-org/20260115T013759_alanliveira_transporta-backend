class Tracking < ApplicationRecord
  has_many :statuses
  accepts_nested_attributes_for :statuses
end