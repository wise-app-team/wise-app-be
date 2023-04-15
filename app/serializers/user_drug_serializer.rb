class UserDrugSerializer
  include JSONAPI::Serializer
  attributes :user_id, 
             :drug_id,
             :dose1,
             :dose2,
             :dose3,
             :prn,
             :notes
end
