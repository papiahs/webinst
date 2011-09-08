class Pic < ActiveRecord::Base
  has_many :autor
  has_many :ref
  has_and_belongs_to_many  :arts
  attr_reader :uploadfield
  validates :titulo, :tipo, :nombre ,:presence => {:message => "Debe ser completado"}
  validates_format_of :tipo, :with => /^image/, 
                            :message => "Solo pueden subirse imagenes"
  
  def uploadfield=(uploadfield)
    @uploadfield = uploadfield
    self.data = @uploadfield.read
    self.tipo = @uploadfield.content_type.chomp
    self.nombre = @uploadfield.original_filename
  end    
end
