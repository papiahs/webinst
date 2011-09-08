class Autor < ActiveRecord::Base
  belongs_to :pic
  has_and_belongs_to_many  :refs
  has_and_belongs_to_many  :arts
end
