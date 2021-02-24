class Category < ApplicationRecord
  has_many :actions
  
  CATEGORIES = ['Naissance', 'Hospitalisation', 'Admission', 'Consultation', 'Ordonnance']
  validate :each_name

  private

  def each_name
    name.map { |cat| CATEGORIES.include?(cat) }.all?
  end

end
