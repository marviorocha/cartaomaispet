module ApplicationHelper

def title(page_title)
  content_for(:title) {page_title}
end

def company_name
   "Cartão Mais Pet "
end

def select_menu

  if current_user.role == "user"
  render('layouts/parts/usernav')
  else
  render('layouts/parts/storenav')
  end
end

def user_avatar

if current_user.avatar.attached? == true
image_tag(current_user.avatar, size:"150x150", class: "responsive circle align-center")
else
  require 'digest/md5'
  hash = Digest::MD5.hexdigest(current_user.email.downcase)
  image_tag("https://www.gravatar.com/avatar/#{hash}?d=mp", size:"150x150", class: "responsive circle align-center")
end

end

def petshop
   @petshop = Petshop.current_user.id
end




end
