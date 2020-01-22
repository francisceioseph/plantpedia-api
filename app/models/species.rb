class Species < ApplicationRecord
    has_many :plants

    has_one :flower

    accepts_nested_attributes_for :flower, allow_destroy: true
end
