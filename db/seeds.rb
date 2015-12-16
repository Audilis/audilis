# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Game.create(
  uid:          'liag',
  title:        'Love Is A Game',
  tagline:      'All this time I held the key to happiness in the palm of my hand...',
  description:  """
    Dive into the beautiful otome that takes you further than just falling in love. With six routes to explore, Love is a Game offers six distinct romances, six unique characters, and dozens of choices to change the outcome of your heroine’s tale.
    Enjoy breathtaking art and character portrayal as you journey through the life of a girl who’s wish for a story-worthy love life has just been granted.
    Our artistic otome brings relatable challenges and hardships to the game, by creating a story riddled with the realistic struggle of pursuing happiness and a dream romance.
    This union of stunning graphics and captivating story is the first of Audilis’s Creations: Love is a Game.
  """
)
