module ApplicationHelper

  def avatar_url(player)
    gravatar_id = Digest::MD5.hexdigest(player.provider_email.downcase)
    "http://gravatar.com/avatar/#{gravatar_id}.png?s=48"
  end

end
