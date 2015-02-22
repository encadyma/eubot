# Description:
#   Make Hubot your barista! Hubot will brew you a virtual coffee. Just choose a coffee type from http://coffee.wikia.com/wiki/List_of_coffee_drinks and enjoy.
#
# Notes:
#   Hubot brews you a coffee.
#   Each coffee kind is rated with the maximum amount of cream, milk, cinnamon, sugar/sweetener (0 - none/not available, measured in grams), along with the name, slug, and description of the coffee type itself.
#
# Commands:
#   brew me a <coffee type>

robot.brain.set 'coffeeTypes', [
  {
    name: 'Turkish Coffee',
    slug: 'turkish',
    cream_m: 3,     
    sugar_m: 3,     
    sweetener_m: 3,      
    cinnamon_m: 3,     
    milk_m: 3
  },
  {
    name: 'Cold Coffee',
    slug: 'cold',
    cream_m: 3,     
    sugar_m: 3,     
    sweetener_m: 3,     
    cinnamon_m: 3,     
    milk_m: 3
  },
  {
    name: 'Cappachino'
    slug: 'cappachino',
    cream_m: 3,     
    sugar_m: 3,     
    sweetener_m: 3,     
    cinnamon_m: 3,     
    milk_m: 3
  },
  {
    name: 'Espresso'
    slug: 'espresso',
    cream_m: 3,     
    sugar_m: 3,     
    sweetener_m: 3,     
    cinnamon_m: 3,     
    milk_m: 3
  },
  {
    name: 'Espressino'
    slug: 'Espressino',
    cream_m: 3,     
    sugar_m: 3,     
    sweetener_m: 3,     
    cinnamon_m: 3,     
    milk_m: 3
  },
  {
    name: 'Latte'
    slug: 'latte',
    cream_m: 3,     
    sugar_m: 3,     
    sweetener_m: 3,     
    cinnamon_m: 3,     
    milk_m: 3
  },
  {
    name: 'Flat White'
    slug: 'white',
    cream_m: 3,     
    sugar_m: 3,     
    sweetener_m: 3,     
    cinnamon_m: 3,     
    milk_m: 3
  },
  {
    name: 'Galão',
    slug: 'galao',
    cream_m: 3,     
    sugar_m: 3,     
    sweetener_m: 3,     
    cinnamon_m: 3,     
    milk_m: 3
  },
  {
    name: 'Vienna',
    slug: 'vienna',
    cream_m: 3,     
    sugar_m: 3,     
    sweetener_m: 3,     
    cinnamon_m: 3,     
    milk_m: 3
  },
  {
    name: 'Decaf',
    slug: 'decaf',
    cream_m: 3,     
    sugar_m: 3,     
    sweetener_m: 3,     
    cinnamon_m: 3,     
    milk_m: 3
  }
]

modules.export = (robot) ->
  robot.hear /brew me a (.*)/i
    