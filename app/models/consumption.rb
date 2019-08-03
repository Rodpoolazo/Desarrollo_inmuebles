class Consumption < ApplicationRecord
  belongs_to :service_account
  belongs_to :realty
end
