class Plant < ApplicationRecord
    has_rich_text :description
    has_many :images
    accepts_nested_attributes_for :images, allow_destroy: true, reject_if: lambda { |attrs| attrs['url'].blank? }
end
