OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '969467297691-ee97e80r61use6chkfg065d84neri6s9.apps.googleusercontent.com', 'Ij05WnlnpMQ_ypp5ulny3Uav', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end