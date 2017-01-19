ArtistType = GraphQL::ObjectType.define do
  name "Artist"
  description "Artist"
  field :name, types.String
end