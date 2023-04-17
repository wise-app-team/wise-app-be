class UserSerializer
  include JSONAPI::Serializer
  attributes :name,
						 :email,
						 :provider,
						 :token,
             :password_digest,
             :birthday,
             :phone_number,
             :street_address,
             :city,
             :state,
             :zip_code,
						 :drugs,
						 :user_drugs
end
