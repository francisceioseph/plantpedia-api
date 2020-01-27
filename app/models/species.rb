class Species < ApplicationRecord
    include Imageable
    
    has_rich_text :description
    
    has_many :plants
    has_many :species_images

    has_one :flower, dependent: :destroy
    has_one :foliage, dependent: :destroy
    has_one :propagation, dependent: :destroy
    has_one :growth, dependent: :destroy

    accepts_nested_attributes_for :flower, allow_destroy: true
    accepts_nested_attributes_for :foliage, allow_destroy: true
    accepts_nested_attributes_for :propagation, allow_destroy: true
    accepts_nested_attributes_for :growth, allow_destroy: true
    accepts_nested_attributes_for :species_images, allow_destroy: true, reject_if: lambda { |attributes|
        exists = attributes[:id].present?
        empty = attributes[:url].blank?
        attributes.merge!({_destroy: 1}) if exists and empty
        return (!exists and empty)
    }

    validates :scientific_name, presence: true
end
