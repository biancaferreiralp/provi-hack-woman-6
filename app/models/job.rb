class Job < ApplicationRecord
  belongs_to :user

  REQUIREMENTS = ["HTML", "CSS/SCSS/SASS", "JavaScript", "React JS", "React Native", "Redux", "Angular", "Vue.js", "Bootstrap", "jQuery"]
  FORMAT = ["Estágio", "CLT", "PJ", "Freelance"]
  MODALITY = ["Presencial", "Remoto"]

  validates :title, presence: true, length: {maximum: 50}
  validates :location, :description, :benefits, presence: true
  # validates :area, presence: true
  validates :requirements, presence: true, inclusion: { in: REQUIREMENTS }
  validates :format, presence: true, inclusion: { in: FORMAT }
  validates :modality, presence: true, inclusion: { in: MODALITY }
end
