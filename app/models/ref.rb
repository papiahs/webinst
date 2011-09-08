class Ref < ActiveRecord::Base
  belongs_to :pic
  has_and_belongs_to_many  :autors
  has_and_belongs_to_many  :arts
end
