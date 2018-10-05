# frozen_string_literal: true

server '18.130.118.104', user: 'deploy', roles: %w[app db web], primary: true

role :app, %w[deploy@18.130.118.104]
role :web, %w[deploy@18.130.118.104]
role :db, %w[deploy@18.130.118.104]

set :rails_env, :production

set :ssh_options,
    keys: ['/home/bondar/proj_ruby/QnAEs.pem'],
    forward_agent: true,
    auth_methods: %w[publickey password]
