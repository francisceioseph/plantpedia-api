class Species < ApplicationRecord
    has_many :plants

    has_one :flower, dependent: :destroy
    has_one :foliage, dependent: :destroy
    has_one :propagation, dependent: :destroy
    has_one :growth, dependent: :destroy

    accepts_nested_attributes_for :flower, allow_destroy: true
    accepts_nested_attributes_for :foliage, allow_destroy: true
    accepts_nested_attributes_for :propagation, allow_destroy: true
    accepts_nested_attributes_for :growth, allow_destroy: true
end
