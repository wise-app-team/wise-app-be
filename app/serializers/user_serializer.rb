class UserSerializer
  include JSONAPI::Serializer
  attributes :name, 
             :email,
             :password_digest,
             :birthday,
             :phone_number,
             :street_address,
             :city,
             :state,
             :zip_code
end
