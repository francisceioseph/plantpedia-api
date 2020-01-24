class Plant < ApplicationRecord
    include Imageable
    
    has_rich_text :description

    belongs_to :species

    accepts_nested_attributes_for :images, allow_destroy: true, reject_if: lambda { |attrs| attrs['url'].blank? }

    validates :scientific_name, presence: true
end
