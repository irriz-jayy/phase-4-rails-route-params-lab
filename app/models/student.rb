class Student < ApplicationRecord

  def to_s
    "#{first_name} #{last_name}"
  end


  def show
    byebug
  end
end
