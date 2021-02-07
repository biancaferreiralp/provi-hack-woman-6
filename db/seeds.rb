# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"


# USERS/COMPANIES

provi = User.create!(company_name: "Provi", website: "provi.com", description: "Entre os requisitos desta vaga estão HTML, CSS/SCSS/SASS, JavaScript, React JS, React Native, Redux, Bootstrap e jQuery.", 
                      email: "exemplo@provi.com", password: "123456")
                      url = 'https://i.imgur.com/RRlRfqZ.png'
                      filename = File.basename(URI.parse(url).path)
                      file = URI.open(url)
                      provi.photo.attach(io: file, filename: filename)
                      provi.save!

grupo_boticario = User.create!(company_name: "Grupo Boticário", website: "grupoboticario.com", description: "Entre os requisitos desta vaga estão HTML, CSS/SCSS/SASS, JavaScript, React JS, Angular, Redux, Bootstrap e jQuery.", 
                      email: "exemplo@grupoboticario.com", password: "123456")
                      url = 'https://i.imgur.com/iq1eQFU.jpg'
                      filename = File.basename(URI.parse(url).path)
                      file = URI.open(url)
                      grupo_boticario.photo.attach(io: file, filename: filename)
                      grupo_boticario.save!

wavy = User.create!(company_name: "Wavy", website: "wavy.com", description: "Entre os requisitos desta vaga estão HTML, CSS/SCSS/SASS, JavaScript, React JS, Vue.js, Redux, Bootstrap e jQuery.", 
                          email: "exemplo@wavy.com", password: "123456")
                          url = 'https://i.imgur.com/bJP4Xo2.png'
                          filename = File.basename(URI.parse(url).path)
                          file = URI.open(url)
                          wavy.photo.attach(io: file, filename: filename)
                          wavy.save!

pagar_me = User.create!(company_name: "Pagar.me", website: "pagar.me", description: "Entre os requisitos desta vaga estão HTML, CSS/SCSS/SASS, JavaScript, React JS, Redux, Bootstrap e jQuery.", 
                          email: "exemplo@pagarme.com", password: "123456")
                          url = 'https://i.imgur.com/9IM0pyN.png'
                        filename = File.basename(URI.parse(url).path)
                        file = URI.open(url)
                        pagar_me.photo.attach(io: file, filename: filename)
                        pagar_me.save!

credere = User.create!(company_name: "Credere", website: "credere.com", description: "Entre os requisitos desta vaga estão HTML, CSS/SCSS/SASS, JavaScript, React JS, React Native, Bootstrap e jQuery.", 
                          email: "exemplo@credere.com", password: "123456")
                          url = 'https://i.imgur.com/AnGJ8Rs.png'
                          filename = File.basename(URI.parse(url).path)
                          file = URI.open(url)
                          credere.photo.attach(io: file, filename: filename)
                          credere.save!

enjoei = User.create!(company_name: "Enjoei", website: "enjoei.com", description: "Entre os requisitos desta vaga estão HTML, CSS/SCSS/SASS, JavaScript, React JS, React Native, Redux, Bootstrap e jQuery.", 
                          email: "exemplo@enjoei.com", password: "123456")
                          url = 'https://i.imgur.com/H91yux3.jpg'
                          filename = File.basename(URI.parse(url).path)
                          file = URI.open(url)
                          enjoei.photo.attach(io: file, filename: filename)
                          enjoei.save!


# JOBS

mobile = Job.create!(title: "Desenvolvedora Mobile", location: "Rio de Janeiro", description: "Entre os requisitos desta vaga estão HTML, CSS/SCSS/SASS, JavaScript, React JS, React Native, Redux, Bootstrap e jQuery.", 
                      format: "PJ", modality: "Presencial", level: "Pleno",requirements: ["HTML", "CSS/SCSS/SASS", "JavaScript", "React JS", "React Native", "Redux", "Bootstrap", "jQuery"], user_id: User.all.first.id)
                      
angular = Job.create!(title: "Desenvolvedora Angular", location: "Remoto", description: "Entre os requisitos desta vaga estão HTML, CSS/SCSS/SASS, JavaScript, React JS, Angular, Redux, Bootstrap e jQuery.", 
                      format: "CLT", modality: "Remoto", level: "Junior", requirements: ["HTML", "CSS/SCSS/SASS", "JavaScript", "React JS", "Redux", "Angular", "Bootstrap", "jQuery"], user_id: User.all.second.id)

vue = Job.create!(title: "Desenvolvedora Vue.js", location: "Remoto", description: "Entre os requisitos desta vaga estão HTML, CSS/SCSS/SASS, JavaScript, React JS, Vue.js, Redux, Bootstrap e jQuery.", 
                     format: "Freelance", modality: "Remoto", level: "Junior", requirements: ["HTML", "CSS/SCSS/SASS", "JavaScript", "Redux", "Vue.js", "Bootstrap", "jQuery"], user_id: User.all.third.id)

react_js = Job.create!(title: "Desenvolvedora React JS", location: "Remoto", description: "Entre os requisitos desta vaga estão HTML, CSS/SCSS/SASS, JavaScript, React JS, Redux, Bootstrap e jQuery.", 
                     format: "Estágio", modality: "Remoto", level: "Junior", requirements: ["HTML", "CSS/SCSS/SASS", "JavaScript", "React JS", "Redux", "Bootstrap", "jQuery"], user_id: User.all.fourth.id)

react_native = Job.create!(title: "Desenvolvedora React Native", location: "Remoto", description: "Entre os requisitos desta vaga estão HTML, CSS/SCSS/SASS, JavaScript, React JS, React Native, Bootstrap e jQuery.", 
                     format: "PJ", modality: "Remoto", level: "Senior", requirements: ["HTML", "CSS/SCSS/SASS", "JavaScript", "React JS", "React Native", "Bootstrap", "jQuery"], user_id: User.all.fifth.id)

javascript = Job.create!(title: "Desenvolvedora JavaScript", location: "Remoto", description: "Entre os requisitos desta vaga estão HTML, CSS/SCSS/SASS, JavaScript, React JS, React Native, Redux, Bootstrap e jQuery.", 
                     format: "CLT", modality: "Remoto", level: "Pleno", requirements: ["HTML", "CSS/SCSS/SASS", "JavaScript", "React JS", "React Native", "Redux", "Bootstrap", "jQuery"], user_id: User.all.last.id)

