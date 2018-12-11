module ApplicationHelper

def title(page_title)
  content_for(:title) {page_title}
end

def company_name
   "Cartão Mais Pet - "
end

def select_menu

  if current_user.role == "user"
  render('layouts/parts/usernav')
  else
  render('layouts/parts/storenav')
  end
end




end
