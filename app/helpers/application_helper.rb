module ApplicationHelper
  def url_img(id,file)
    url_for(:controller=>'pics',:action => 'view', :id => id, :nombrefile => file.gsub('.','_'))
  end
end
