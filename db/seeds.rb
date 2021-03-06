# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


	Office.create([{name: "Programador"},
							   {name: "Desenvolvedor"},
							   {name: "Administrador"},
							   {name: "Gerente"},
							   {name: "Vendedor"},
							   {name: "Diretoria"},
							   {name: "Financeiro"},
							   {name: "Transportador"},
							   {name: "Funcionario"},
							   {name: "Almoxarifado"}
								])	

	99.times do |n|
  name  = Faker::Name.name
  email = "segmentation-#{n+1}@admin.org"
  state = 'Ceara'
  office = Office.first
  Contact.create!(name:  name,
                  email: email,
                  age: 30,
                  state: 'Ceará',
                  office: office)
end
