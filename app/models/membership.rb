class Membership < ApplicationRecord
    belongs_to :gym
    belongs_to :client

    validates :gym_id, numericality: {only_integer: true}
    validates :client_id, numericality: {only_integer: true}
    validates :charge, numericality: {only_integer: true}
    validates_uniqueness_of :client_id, scope: :gym_id, message: 'has already signed up for this gym'

end
