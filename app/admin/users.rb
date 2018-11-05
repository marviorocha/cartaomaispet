ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :name, :last_name, :email, :role
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

index do
    selectable_column
    id_column
    column 'Nome', :name
    column 'Sobre Nome', :last_name
    column 'Acesso', :sign_in_count
    column 'Criado em:', :created_at
    column :role
    actions
  end

  form do |f|
     f.inputs "Usuários" do
       f.input :name
       f.input :last_name
       f.input :email
       f.input :role, collection: ([['Administrador', 'admin'], ['Shopping', 'shop'], ['Usuário', 'user'], ['Banned', 'banned']]),  prompt: "Select your age"
     end
     f.actions
   end



end
