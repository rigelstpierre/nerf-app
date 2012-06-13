Rails.application.config.middleware.use OmniAuth::Builder do
  # ...
  provider :identity, on_failed_registration: lambda { |env|
    IdentitiesController.action(:new).call(env)
  }

  provider PlanningCenterOauth, ENV['PCO_KEY'], ENV['PCO_SECRET'], :client_options => {:site => "https://www.planningcenteronline.com"}, :name => 'planning_center'
end

# Localhost: "24WompkcH9aryNVIb2LY", "yxv9MtF56OijiQ7ghz5Nqalm1ORHLE5SW8cPHGrN"
# Production: "XQGnO9JtI6foj3l4bzkh", "rGwdFwzlejNtEgqQY4MP9LM4fU5lG96A5a9ggWbz"


# export PCO_KEY=24WompkcH9aryNVIb2LY

