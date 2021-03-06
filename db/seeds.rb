# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
role_list = [
    'super_admin','account_admin','user'
]

role_list.each do |name|
  Role.create( name: name)
end

# data_type_list = [ 'dropdown', 'text','checkbox','radiobutton']
# data_type_list.each do |name|
#   DataType.create( name: name)
# end