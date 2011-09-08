class Art < ActiveRecord::Base
  has_and_belongs_to_many  :refs
  has_and_belongs_to_many  :autors
  has_and_belongs_to_many  :pics
end
