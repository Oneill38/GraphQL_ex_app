QueryType = GraphQL::ObjectType.define do
  name "Query"
  description "The query root for this schema"

  field :artist do
    type ArtistType
    argument :id, !types.ID
    resolve -> (obj, args, ctx) {
      Artist.find(args[:id])
    }
  end

  field :album do
  	type AlbumType
  	argument :name, !types.String
  	resolve -> (obj, args, ctx){
  		Album.find_by(name: args[:name])
  	}
  end

end