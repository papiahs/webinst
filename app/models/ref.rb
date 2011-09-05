class Ref < ActiveRecord::Base
  belongs_to :ref
  has_and_belongs_to_many  :autor
end
