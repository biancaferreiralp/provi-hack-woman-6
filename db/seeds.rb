# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# USERS/COMPANIES

provi = User.create!(company_name: "Provi", website: "provi.com", description: "Entre os requisitos desta vaga estão HTML, CSS/SCSS/SASS, JavaScript, React JS, React Native, Redux, Bootstrap e jQuery.", 
                      email: "exemplo@provi.com", password: "123456")

grupo_boticario = User.create!(company_name: "Grupo Boticário", website: "grupoboticario.com", description: "Entre os requisitos desta vaga estão HTML, CSS/SCSS/SASS, JavaScript, React JS, Angular, Redux, Bootstrap e jQuery.", 
                      email: "exemplo@grupoboticario.com", password: "123456")

wavy = User.create!(company_name: "Wavy", website: "wavy.com", description: "Entre os requisitos desta vaga estão HTML, CSS/SCSS/SASS, JavaScript, React JS, Vue.js, Redux, Bootstrap e jQuery.", 
                          email: "exemplo@wavy.com", password: "123456")

pagar_me = User.create!(company_name: "Pagar.me", website: "pagar.me", description: "Entre os requisitos desta vaga estão HTML, CSS/SCSS/SASS, JavaScript, React JS, Redux, Bootstrap e jQuery.", 
                          email: "exemplo@pagarme.com", password: "123456")

credere = User.create!(company_name: "Credere", website: "credere.com", description: "Entre os requisitos desta vaga estão HTML, CSS/SCSS/SASS, JavaScript, React JS, React Native, Bootstrap e jQuery.", 
                          email: "exemplo@credere.com", password: "123456")

enjoei = User.create!(company_name: "Enjoei", website: "enjoei.com", description: "Entre os requisitos desta vaga estão HTML, CSS/SCSS/SASS, JavaScript, React JS, React Native, Redux, Bootstrap e jQuery.", 
                          email: "exemplo@enjoei.com", password: "123456")


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

