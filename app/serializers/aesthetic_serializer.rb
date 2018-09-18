class AestheticSerializer < ActiveModel::Serializer
  attributes :id, :control_type, :aesthetic_description, :aesthetic_code
end
