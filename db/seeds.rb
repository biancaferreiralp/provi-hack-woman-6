# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

edtech = User.create!(company_name: "EdTech", website: "edtech.com", description: "A EdTech é a maior empresa 
                      de educação online da América Latina. Nós exploramos todo o potencial da tecnologia para 
                      alcançar ainda mais pessoas.", email: "edtech@edtech.com", password: "123456")

fintech = User.create!(company_name: "FinTech", website: "fintech.com", description: "A FinTech é a maior empresa 
                      de investimentos da América Latina. Nós exploramos todo o potencial da tecnologia para 
                      alcançar ainda mais pessoas.", email: "fintech@fintech.com", password: "123456")

marketplace = User.create!(company_name: "Marketplace", website: "marketplace.com", description: "A Marketplace 
                          é a maior referência de roupas da América Latina. Nós exploramos todo o potencial 
                          da tecnologia para alcançar ainda mais pessoas.", email: "marketplace@marketplace.com", 
                          password: "123456")
