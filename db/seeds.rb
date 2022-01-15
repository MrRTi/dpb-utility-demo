data = [
['Prisoners', 'Hugh Jackman', 'Keller Dover'],
['Prisoners', 'Jake Gyllenhaal', 'Detective Loki'],
['Prisoners', 'Viola Davis', 'Nancy Birch'],
['Prisoners', 'Maria Bello', 'Grace Dover'],
['Prisoners', 'Terrence Howard', 'Franklin Birch'],
['Prisoners', 'Melissa Leo', 'Holly Jones'],
['Prisoners', 'Paul Dano', 'Alex Jones'],
['Prisoners', 'Dennis Christopher', 'Mr. Jones'],
['Prisoners', 'Dylan Minnette', 'Ralph Dover'],
['Prisoners', 'Brad James', 'Officer Carter'],
['Prisoners', 'Zoë Soul', 'Eliza Birch'],
['Prisoners', 'Erin Gerasimovich', 'Anna Dover'],
['Prisoners', 'Kyla-Drew Simmons', 'Joy Birch'],
['Prisoners', 'Wayne Duvall', "Captain Richard O'Malley"],
['Prisoners', 'Len Cariou', 'Father Patrick Dunn'],
['Prisoners', 'David Dastmalchian', 'Bob Taylor'],
['Prisoners', 'Jeff Pope', 'Elliot Milland'],
['Enemy', 'Jake Gyllenhaal', 'Adam Bell'],
['Enemy', 'Jake Gyllenhaal', 'Anthony Claire'],
['Enemy', 'Mélanie Laurent', 'Mary'],
['Enemy', 'Sarah Gadon', 'Helen Claire'],
['Enemy', 'Isabella Rossellini', 'Mother'],
['Enemy', 'Kedar Brown', 'a security guard'],
['Enemy', 'Darryl Dinn', 'the video store clerk'],
['Enemy', 'Joshua Peace', 'Carl'],
['Enemy', 'Tim Post', "Anthony's concierge"],
['Sicario', 'Emily Blunt', 'Kate Macer'],
['Sicario', 'Josh Brolin', 'Matt Graver'],
['Sicario', 'Benicio del Toro', 'Alejandro Gillick'],
['Sicario', 'Daniel Kaluuya', 'Reggie Wayne'],
['Sicario', 'Victor Garber', 'Dave Jennings'],
['Sicario', 'Jon Bernthal', 'Ted'],
['Sicario', 'Jeffrey Donovan', 'Steve Forsing'],
['Sicario', 'Raoul Trujillo', 'Rafael'],
['Sicario', 'Julio Cesar Cedillo', 'Fausto Alarcón'],
['Sicario', 'Hank Rogerson', 'Phil Coopers'],
['Sicario', 'Bernardo Saracino', 'Manuel Díaz'],
['Sicario', 'Maximiliano Hernández', 'Silvio'],
['Sicario', 'Edgar Arreola', 'Guillermo'],
['Arrival', 'Amy Adams', 'Louise Banks'],
['Arrival', 'Jeremy Renner', 'Ian Donnelly'],
['Arrival', 'Forest Whitaker', 'Colonel G. T. Weber'],
['Arrival', 'Michael Stuhlbarg', 'Agent Halpern'],
['Arrival', "Mark O'Brien", 'Captain Marks'],
['Arrival', 'Tzi Ma', 'General Shang'],
['Blade Runner 2049', 'Ryan Gosling', 'K'],
['Blade Runner 2049', 'Harrison Ford', 'Rick Deckard'],
['Blade Runner 2049', 'Ana de Armas', 'Joi'],
['Blade Runner 2049', 'Sylvia Hoeks', 'Luv'],
['Blade Runner 2049', 'Robin Wright', 'Lt. Joshi'],
['Blade Runner 2049', 'Mackenzie Davis', 'Mariette'],
['Blade Runner 2049', 'Carla Juri', 'Dr. Ana Stelline'],
['Blade Runner 2049', 'Lennie James', 'Mister Cotton'],
['Blade Runner 2049', 'Dave Bautista', 'Sapper Morton'],
['Blade Runner 2049', 'Jared Leto', 'Niander Wallace'],
['Blade Runner 2049', 'Edward James Olmos', 'Gaff'],
['Blade Runner 2049', 'Barkhad Abdi', 'Doc Badger'],
['Blade Runner 2049', 'Hiam Abbass', 'Freysa'],
['Blade Runner 2049', 'David Dastmalchian', 'Coco'],
['Blade Runner 2049', 'Wood Harris', 'Nandez'],
['Blade Runner 2049', 'Tómas Lemarquis', 'Wallace Corporation file clerk'],
['Dune', 'Timothée Chalamet', 'Paul Atreides'],
['Dune', 'Rebecca Ferguson', 'Lady Jessica'],
['Dune', 'Oscar Isaac', 'Duke Leto Atreides'],
['Dune', 'Josh Brolin', 'Gurney Halleck'],
['Dune', 'Stellan Skarsgård', 'Baron Vladimir Harkonnen'],
['Dune', 'Dave Bautista', 'Glossu Rabban'],
['Dune', 'Stephen McKinley Henderson', 'Thufir Hawat'],
['Dune', 'Zendaya', 'Chani'],
['Dune', 'David Dastmalchian', 'Piter De Vries'],
['Dune', 'Chang Chen', 'Dr. Wellington Yueh'],
['Dune', 'Sharon Duncan-Brewster', 'Dr. Liet-Kynes'],
['Dune', 'Charlotte Rampling', 'Gaius Helen Mohiam'],
['Dune', 'Jason Momoa', 'Duncan Idaho'],
['Dune', 'Javier Bardem', 'Stilgar'],
['Dune', 'Babs Olusanmokun', 'Jamis'],
['Dune', 'Benjamin Clementine', 'Herald of the Change'],
['Dune', 'Golda Rosheuvel', 'Shadout Mapes'],
['Dune', 'Roger Yuan', 'Lieutenant Lanville'],
]

data.each do |movie_name, actor_name, character_name|
  movie = Movie.find_or_create_by(name: movie_name)
  actor = Actor.find_or_create_by(full_name: actor_name)
  character = Character.create(name: character_name, movie_id: movie.id)

  actor.movies << movie
  actor.characters << character
end
