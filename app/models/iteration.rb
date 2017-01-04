class Iteration < ApplicationRecord
  belongs_to  :assignment
  has_many :comments
end