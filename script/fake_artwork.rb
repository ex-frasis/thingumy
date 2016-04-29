30.times do |n|
  artwork = Artwork.create(
    title: "An artwork #{n}",
  )
  artwork.artists << Artist.offset(rand(Artist.count)).first
  artwork.images << Image.create(
    url: "https://www.petfinder.com/wp-content/uploads/2012/11/140272627-grooming-needs-senior-cat-632x475.jpg"
  )
  artwork.save!
end
