class Message < ApplicationRecord
    validates :body, presence: true
    belongs_to :user
    scope :custom_method, -> { order(:created_at).last(5) }
end
