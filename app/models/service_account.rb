class ServiceAccount < ApplicationRecord
 has_many :consumptions
 has_many :realties, through: :consumptions

end
  
