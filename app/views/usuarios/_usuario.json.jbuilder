json.extract! usuario, :id, :nombres, :apellidos, :telefono, :salario, :Ciudad_id, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
