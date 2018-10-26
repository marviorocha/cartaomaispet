module ApplicationHelper

def title(page_title)
  content_for(:title) {page_title}
end

def company_name
   "Cartão Mais Pet -"
end

end
