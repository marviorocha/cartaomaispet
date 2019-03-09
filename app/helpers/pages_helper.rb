module PagesHelper

def saudacao

  time = Time.now
  if time > time.at_beginning_of_day
    "Bom dia! " + current_user.name.capitalize
  end
  if time > time.at_midday
    "Boa tarde! " + current_user.name.capitalize
  end
  if time > time.at_midday + 6.hour
   "Boa Noite! " + current_user.name.capitalize
  end
end

 


end
