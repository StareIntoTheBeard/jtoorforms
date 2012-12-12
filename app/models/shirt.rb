class Shirt < ActiveRecord::Base
  attr_accessible :phone_number, :customer_name
  default_scope :order => 'created_at ASC'
end
