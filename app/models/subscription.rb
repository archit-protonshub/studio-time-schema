class Subscription < ApplicationRecord
  belongs_to :subscription_type
  has_many :studios
end
