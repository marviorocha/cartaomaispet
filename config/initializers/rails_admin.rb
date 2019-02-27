RailsAdmin.config do |config|

  ### Popular gems integration
  config.main_app_name = ["Administração Cartão + Pet"]
  config.main_app_name = Proc.new { |controller| [ "Cartão Mais Pet", "Admin - #{controller.params[:action].try(:titleize)}" ] }

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == Cancan ==
  config.authorize_with :cancan
  config.authorize_with do
    redirect_to main_app.root_path unless current_user.role == "admin"
  end
  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    # export
    bulk_delete
    show
    edit
    delete
    #  show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show

    # Navigation Settings

    config.model 'Animal' do
      label "Animal"
      label_plural "Animais"
      navigation_icon 'fa fa-paw'
      weight 2
    end
    config.model 'Calendar' do
      label "Agendamento"
      label_plural "Agendamentos"
      navigation_icon 'icon-calendar'
      weight 3
    end
    config.model 'Category' do
      label "Categoria"
      label_plural "Categorias"
      navigation_icon 'icon-list-alt'
      weight 1
    end
    config.model 'Discount' do
      label "Desconto"
      label_plural "Descontos"
      navigation_icon 'icon-tag'
      weight 4
    end

    config.model 'Favorite' do
      label "Favorito"
      label_plural "Favoritos"
      navigation_icon 'icon-heart'
      weight 5
    end

    config.model 'Petshop' do
      label "Rede Credênciada"
      label_plural "Rede Credênciadas"
      navigation_icon 'icon-briefcase'
      weight 6
    end

    config.model 'Plan' do
      label "Plano"
      label_plural "Planos"
      navigation_icon 'fa fa-users'
      weight 6
    end
    config.model 'User' do

      label "Usuário"
      label_plural "Usuários"
      navigation_icon 'fa fa-user'
      weight 7

      #list field
      list do
        field :name do
          label "Nome"
        end
        field :last_name do
          label "Sobre Nome"
        end
        field :role do
          label "Tipo"
         pretty_value do
         bindings[:object].role.titleize
         end
        end
        field :created_at do
          label "Criado em:"
          strftime_format "%d de %b de %Y às %H:%M:%p"
        end

      end #end list view
    #Edit User
    edit do
      configure :name do
         hide
       end
    end #end edit user

    end








  end
end
