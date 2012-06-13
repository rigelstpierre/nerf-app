class Player < ActiveRecord::Base
  attr_accessible :name, :oauth_secret, :oauth_token, :provider, :provider_email, :uid, :profile

  validates_presence_of :provider, :uid, :name
  validates_format_of :provider_email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i, :if => :provider_email

  def self.create_with_omniauth(auth)
    create! do |player|
      player.provider = auth["provider"]
      player.uid = auth["uid"]
      player.name = auth["info"]["name"]
    end
  end

end
