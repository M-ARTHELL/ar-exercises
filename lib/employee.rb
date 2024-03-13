class Employee < ActiveRecord::Base
belongs_to :store

validates :first_name, presence: {strict: true}
validates :last_name, presence: {strict: true}
validates :hourly_rate, numericality: {only_integer: true, in: 40..200}
validates :store_id, presence: {strict: true}
end
