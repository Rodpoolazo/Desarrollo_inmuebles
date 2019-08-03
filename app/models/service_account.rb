class ServiceAccount < ApplicationRecord
 has_many :consumptions
 has_many :realtys, through: :consumptions

end
