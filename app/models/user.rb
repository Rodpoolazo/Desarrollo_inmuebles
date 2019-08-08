class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


# Aqui se pone los roles
 enum role: [:admin, :analyzer, :lawyer, :appraiser,]
end
