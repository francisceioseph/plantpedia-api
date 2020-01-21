class Plant < ApplicationRecord
    has_many :images
    accepts_nested_attributes_for :images, reject_if: lambda { |attrs| attrs['url'].blank? }
end
