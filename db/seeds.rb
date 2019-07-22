dtrw = Tour.create(title: "Down The Road Wherever", year: "2019")
tracker = Tour.create(title: "Tracker", year: "2015")


saint_julien = Concert.create(
								city: "Saint Julien", 
								venue: "Stade des Burgondes",
								date: "14th July 2019", 
								content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
													Magnam beatae commodi deserunt reiciendis necessitatibus veritatis eveniet 
													fugiat earum! Quam repellendus earum, magni nihil nemo, id deserunt quia a
													liquam sint autem.",
								tour_id: dtrw.id
							)

nimes = Concert.create(
								city: "Nimes", 
								venue: "Arènes",
								date: "15th July 2019", 
								content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
													Magnam beatae commodi deserunt reiciendis necessitatibus veritatis eveniet 
													fugiat earum! Quam repellendus earum, magni nihil nemo, id deserunt quia a
													liquam sint autem.",
								tour_id: dtrw.id
							)

lyon = Concert.create(
								city: "Lyon", 
								venue: "Hall Tony Garnier",
								date: "19th June2019", 
								content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
													Magnam beatae commodi deserunt reiciendis necessitatibus veritatis eveniet 
													fugiat earum! Quam repellendus earum, magni nihil nemo, id deserunt quia a
													liquam sint autem.",
								tour_id: dtrw.id
							)

saint_julien = Concert.create(
								city: "Saint Julien", 
								venue: "Stade des Burgondes",
								date: "21th July 2015", 
								content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
													Magnam beatae commodi deserunt reiciendis necessitatibus veritatis eveniet 
													fugiat earum! Quam repellendus earum, magni nihil nemo, id deserunt quia a
													liquam sint autem.",
								tour_id: tracker.id
							)

