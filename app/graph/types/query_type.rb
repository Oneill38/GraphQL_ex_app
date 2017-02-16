QueryType = GraphQL::ObjectType.define do
  name "Query"
  description "The query root for this schema"

  field :artist, types[ArtistType] do
    argument :id, types.ID
    resolve -> (obj, args, ctx) {
      if args[:id]
        Artist.find(args[:id])
      else
        Artist.all
      end
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