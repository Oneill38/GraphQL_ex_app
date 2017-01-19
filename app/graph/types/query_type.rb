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
  
end