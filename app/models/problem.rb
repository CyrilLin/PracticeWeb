class Problem < ApplicationRecord
  belongs_to :language
  has_many :assignments
end