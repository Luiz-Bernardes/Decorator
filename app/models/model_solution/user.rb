class User < ApplicationRecord
	
	def protected_email
    return 'Private' if email_private?
    self[:email]
  end

  def full_name
    first_name + ' ' + last_name
  end

  def formatted_birthday
    birthday.strftime("%d/%m/%Y")
  end

end
