# Consumer Key: 24WompkcH9aryNVIb2LY
# Consumer Secret: yxv9MtF56OijiQ7ghz5Nqalm1ORHLE5SW8cPHGrN
# Request Token URL https://www.planningcenteronline.com/oauth/request_token
# Access Token URL https://www.planningcenteronline.com/oauth/access_token
# Authorize URL https://www.planningcenteronline.com/oauth/authorize

class PlanningCenterOauth < OmniAuth::Strategies::OAuth
  # These are called after authentication has succeeded. If
  # possible, you should try to set the UID without making
  # additional calls (if the user id is returned with the token
  # or as a URI parameter). This may not be possible with all
  # providers.
  uid{ raw_info['id'] }

  info do
    {
      :name => raw_info['name']
    }
  end

  extra do
    {
      'raw_info' => raw_info
    }
  end

  def raw_info
    @raw_info ||= JSON.parse(access_token.get('/me.json').body)
    # @raw_info ||= MultiJson.decode(access_token.get('/me.json')).body
  end
end
