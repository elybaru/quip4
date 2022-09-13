class Conversation < ApplicationRecord
    has_many :messages, dependent: :destroy
    has_many :users, through: :messages
    validates :name, presence: :true
    validates_uniqueness_of :name
end
