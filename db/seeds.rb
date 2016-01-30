# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
    
    parts = Part.create([{name: "Left Arm Top", start: 47 , ending: 55},
        {name: "Left Arm Bottom", start: 35 , ending: 47},
        {name: "Right Arm Top", start: 67 , ending: 75},
        {name: "Right Arm Bottom", start: 55 , ending: 67},
        {name: "Chest", start: 0 , ending: 35}])

    modes = Mode.create([{name: "Normal color"}, {name: "Transaction Left Wave"}, {name: "Transaction Right Wave"},{name: "Transaction Up Wave"}, {name: "Transaction Down Wave"}])


