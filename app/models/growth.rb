class Growth < ApplicationRecord
    belongs_to :species
    # has_one :temperature_minimum, class_name: 'Temperature', dependant: :destroy
    # has_one :temperature_maximum, class_name: 'Temperature', dependant: :destroy
end
