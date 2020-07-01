class Onepiece < ApplicationRecord
  validates :character, :sea, :island,
   :location, :quote, :akuma_no_mi, presence: true
end
