class Species < ApplicationRecord
    has_many :plants

    has_one :flower
    has_one :foliage
    has_one :propagation

    accepts_nested_attributes_for :flower, allow_destroy: true
    accepts_nested_attributes_for :foliage, allow_destroy: true
    accepts_nested_attributes_for :propagation, allow_destroy: true
end
