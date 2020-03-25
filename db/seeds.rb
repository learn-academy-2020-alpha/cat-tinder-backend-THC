# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cats = [{
    name: 'Morris',
    age: 2,
    hobby: "Long walks on the beach while eating Catnip."
    },
    {name: 'Paws',
    age: 4,
    hobby: "Snuggling by the fire and really likes Catnip."
    },
    {name: 'Mr. Meowsalot',
    age: 12,
    hobby: "Being in charge. Also has back issues and now is addicted to Catnip."
    }]

    cats.each do |v|
        Cat.create v
    end