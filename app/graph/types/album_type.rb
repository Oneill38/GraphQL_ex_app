Album = GraphQL::ObjectType.define do
  name "Album"
  description "An Album"
  field :name, types.String
end