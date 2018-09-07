class SelectionControlSerializer < ActiveModel::Serializer
  attributes :id, :name, :value, :code, :label, :description
end
