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

if current_user.avatar
image_tag(current_user.avatar, size:"150x150", class: "responsive circle align-center")
else
image_tag("https://picsum.photos/150", size:"150x150", class: "responsive circle align-center")
end


end



end
