SongType = GraphQL::ObjectType.define do
  name "Song"
  description "Song from Album"
  field :name, types.String
  field :album do
    type AlbumType
    resolve -> (obj, args, ctx) {
      obj.album
    }
  end
end