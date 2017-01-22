# README

### Query Example

query{
  artist(id: "4"){
    name
  }
}

### Mutation Example

mutation{ 
  createArtist(input: {name: "new Artist!"}){ 
  	name 
  } 
}

