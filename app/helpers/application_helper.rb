module ApplicationHelper
  def url_img(id,file)
    url_for(:controller=>'pics',:action => 'view', :id => id, :nombrefile => file.gsub('.','_'))
  end
  def titleSite
    "Psicologia | Psicopedagogia | Nutricion | Monte grande"
  end
  
  def nameSite
    "SUrALMA"
  end
end
