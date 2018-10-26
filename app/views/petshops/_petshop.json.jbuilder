json.extract! petshop, :id, :title, :address, :phone, :cep, :estado, :cidade, :created_at, :updated_at
json.url petshop_url(petshop, format: :json)
