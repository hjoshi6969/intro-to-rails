class BreedsCategory < ApplicationRecord
  belongs_to :breed
  belongs_to :category
end
