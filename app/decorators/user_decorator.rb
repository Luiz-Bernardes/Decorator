class UserDecorator < SimpleDelegator
	
	def self.wrap(collection)
		collection.map do |obj|
			new obj
		end
	end

	def full_name
		first_name + " " + last_name
	end

	def protected_email
    return "Private" if email_private?
    email
  end

  def formatted_birthday
    birthday.strftime("%d/%b/%Y")
  end

end
