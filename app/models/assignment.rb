class Assignment < ApplicationRecord

  has_many :iterations
  belongs_to :problem
  belongs_to :user
end