class HasCategory < ActiveRecord::Base
  belongs_to :producto
  belongs_to :category
end
