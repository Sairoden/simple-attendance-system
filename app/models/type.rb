class Type < ApplicationRecord
  has_many :employee_types
  has_many :employees, through: :employee_types

  after_initialize :set_type_default

  def set_type_default
    employeeType = Type.last
    if employeeType.type == "full-time"
      set employeeType.min_hours = 160
    elsif employeeType.type == "part-time"
      set employeeType.min_hours = 80
    end
  end
  

end
