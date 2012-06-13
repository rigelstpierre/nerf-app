module ApplicationHelper

  def avatar_url(player)
    email = player.try(:provider_email) || ""
    gravatar_id = Digest::MD5.hexdigest(email.downcase)
    "http://gravatar.com/avatar/#{gravatar_id}.png?s=48"
  end

end
