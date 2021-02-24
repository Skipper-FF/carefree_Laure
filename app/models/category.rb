class Category < ApplicationRecord
  has_many :actions
  
  CATEGORIES = %w(Naissance Hospitalisation Admission Consultation Ordonnance)
  validates :categories, inclusion: { in: CATEGORIES }
end
