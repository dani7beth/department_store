class Item < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :department
end
