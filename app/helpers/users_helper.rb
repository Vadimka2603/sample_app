module UsersHelper
	 # Returns the Gravatar for the given user.
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, title: user.name, class: "gravatar")
  end
end
#Код в возвращает тег img для Граватара с классом "gravatar" и альтернативным текстом эквивалентным имени пользователя