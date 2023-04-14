class DrugSerializer
  include JSONAPI::Serializer
  attributes :rxcui, 
             :name,
             :synonym
end
