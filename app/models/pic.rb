class Pic < ActiveRecord::Base
  attr_reader :data
  
  def data=(uploadfield)
    @uploadfield = uploadfield
    self.data = @uploadfield.read
    self.tipo = @uploadfield.content_type.chomp
    self.nombre = @uploadfield.original_filename
  end    
end
