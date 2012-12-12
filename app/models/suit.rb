class Suit < ActiveRecord::Base
  # attr_accessible :title, :body
  default_scope :order => 'created_at ASC'
end
