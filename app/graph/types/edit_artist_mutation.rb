EditArtistMutation = GraphQL::Relay::Mutation.define do
  name "EditArtist"

  input_field :id, !types.ID
  input_field :name, !types.ID

  return_field :artist, ArtistType

  resolve -> (inputs, ctx) {
    params = inputs.to_h.slice(*Artist.attribute_names)
    artist = Artist.find(inputs['id'])
    artist.update(params)

    { artist: artist }
  }
end