50.times do |n|
  Artist.create(
    first_name: "Art",
    last_name: "Person_#{n}",
    smfa_id_number: 100 + n,
  )
end
