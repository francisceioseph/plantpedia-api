class Plant < ApplicationRecord
    has_rich_text :description
    has_many :images, dependent: :destroy
    
    belongs_to :species

    accepts_nested_attributes_for :images, allow_destroy: true, reject_if: lambda { |attrs| attrs['url'].blank? }

    validates :scientific_name, presence: true
end
