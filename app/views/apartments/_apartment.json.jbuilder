json.extract! apartment, :id, :street1, :street2, :city, :zip_code, :state, :country, :name, :phone, :hours, :created_at, :updated_at
json.url apartment_url(apartment, format: :json)
