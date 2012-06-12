Rails.application.config.middleware.use OmniAuth::Builder do
  # ...
  provider :identity, on_failed_registration: lambda { |env|
    IdentitiesController.action(:new).call(env)
  }

  provider PlanningCenterOauth, "24WompkcH9aryNVIb2LY", "yxv9MtF56OijiQ7ghz5Nqalm1ORHLE5SW8cPHGrN", :client_options => {:site => "https://www.planningcenteronline.com"}, :name => 'planning_center'
end