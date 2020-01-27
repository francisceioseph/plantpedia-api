class Plant < ApplicationRecord    
    has_rich_text :description

    belongs_to :species

    has_many :plant_images
    accepts_nested_attributes_for :plant_images, allow_destroy: true, reject_if: lambda { |attributes| 
        exists = attributes[:id].present?
        empty = attributes[:url].blank?
        attributes.merge!({_destroy: 1}) if exists and empty
        return (!exists and empty)
    }

    validates :scientific_name, presence: true
end
