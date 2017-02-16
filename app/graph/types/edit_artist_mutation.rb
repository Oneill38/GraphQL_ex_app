EditArtistMutation = GraphQL::Relay::Mutation.define do
  name "EditArtist"

  input_field :id, !types.ID
  input_field :name, !types.String

  return_field :artist, ArtistType

  resolve -> (obj, inputs, ctx) {
    artist = Artist.find(inputs['id'])
    artist.update(name: inputs[:name])
    artist.save

    { artist: artist }
  }
end