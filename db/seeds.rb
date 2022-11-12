puts "Seeding data...."

#actors
puts 'Creating actor'
emilia = Actor.create(first_name: "Emilia", last_name: "Clarke")
danny_pudi = Actor.create(first_name: "Danny", last_name: "Pudi")
david_hyde_pierce = Actor.create(first_name: "David", last_name: "Hyde Pierce")
jaleel_white = Actor.create(first_name: 'Jaleel', last_name: "White")
raph = Actor.create(first_name: 'Ralph', last_name: "White")
homer = Actor.create(first_name: 'Homer')
apu = Actor.create(first_name: 'Apu', last_name: "Nahasapeemapetilon")

#networks
puts 'Creating networks'

nbc = Network.create(channel: 4, call_letters: "NBC")
hbo = Network.create(channel: 5, call_letters: "HBO")
abc = Network.create(channel: 6, call_letters: "ABC")

#shows
puts 'Creating shows ....'
got = Show.create(name: "Game of Thrones", day: "Sunday", season: "Winter", genre: "Action",network_id: hbo.id)
frasier = Show.create(name: "Frasier", day: "Friday", season: "Summer", genre: "Sitcom",network_id: nbc.id)
community = Show.create(name: "Community", day: "Thursday", season: "Winter", genre: "Comedy",network_id: nbc.id)
simpsons = Show.create(name: "The Simpsons",day: "Wednesday", season: "Spring", genre: "Comedy",network_id: abc.id)

#characters
puts "Creating character"
khaleesi = Character.create(name: "Khaleesi", actor_id: emilia.id, show_id: got.id, catchphrase: "Valar morghulis")
urkel = Character.create(name: "Steve Urkel", catchphrase: "Did I do that?", actor_id: jaleel_white.id, show_id: community.id)
abed = Character.create(name:'Abed', actor_id: danny_pudi.id, show_id: community.id, catchphrase:' If you like "Star Wars," why do you want to murder it and urinate on its grave? ')
niles = Character.create(name: "Niles Crane", show_id: frasier.id, actor_id:david_hyde_pierce.id, catchphrase: "i did it!!")

Character.create(name: "Ralph Wiggum", show_id: simpsons.id, actor_id:raph.id, catchphrase: "jokes these are jokes!!")
Character.create(name: "Homer Simpson", show_id: simpsons.id, actor_id:homer.id, catchphrase: "hahahahahaha")
Character.create(name: "Apu Nahasapeemapetilon", show_id: simpsons.id, actor_id:apu.id, catchphrase: "my name is Homer Apu")



