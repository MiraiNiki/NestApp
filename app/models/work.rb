class Work < ApplicationRecord

  has_many :cuts

  accepts_nested_attributes_for :cuts, allow_destroy: true

end
