class Realty < ApplicationRecord
  has_many :consumptions
  has_many :service_accounts, through: :consumptions
  belongs_to :commune
end
