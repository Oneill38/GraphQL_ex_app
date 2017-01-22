AlbumType = GraphQL::ObjectType.define do
  name "Album"
  description "An Album"
  field :name, types.String
  field :songs, types[SongType]
  field :artist, ArtistType
end