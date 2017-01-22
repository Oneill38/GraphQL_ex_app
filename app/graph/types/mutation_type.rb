MutationType = GraphQL::ObjectType.define do
  name "Mutation"
  description "The mutation root for this schema"

  field :editArtist, field: EditArtistMutation.field

  field :album do
  	type AlbumType
  	argument :name, !types.String
  	resolve -> (obj, args, ctx){
  		Album.find_by(name: args[:name])
  	}
  end

  field :createArtist, field: CreateArtistMutation.field

end