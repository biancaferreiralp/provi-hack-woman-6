class Job < ApplicationRecord
  belongs_to :user

  REQUIREMENTS = ["HTML", "CSS/SCSS/SASS", "JavaScript", "React JS", "React Native", "Redux", "Angular", "Vue.js", "Bootstrap", "jQuery"]
  FORMAT = ["Estágio", "CLT", "PJ", "Freelance"]
  MODALITY = ["Presencial", "Remoto"]

  validates :title, presence: true, length: {maximum: 50}
  validates :location, :description, presence: true
  validates :requirements, presence: :true, length: { minimum: 6}
  validates :format, presence: true, inclusion: { in: FORMAT }
  validates :modality, presence: true, inclusion: { in: MODALITY }

  validate :correct_requirements_types

  private

  def correct_requirements_types
    if self.requirements.blank?
      errors.add(:requirements, "is blank/invalid")
    elsif self.requirements.detect { |s| !(REQUIREMENTS.include? s) }
      errors.add(:requirements, "is invalid")
    end
  end
end
