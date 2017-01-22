CreateArtistMutation = GraphQL::Relay::Mutation.define do
  name "CreateArtist"

  # input_field :input, !CreateArticleInput
  input_field :name, !types.String
  return_field :name, types.String

  resolve -> (obj, inputs, ctx) {
    artist = Artist.create!(
      name: inputs[:name],
    )

    {
      name: inputs[:name]
    }
  }
end