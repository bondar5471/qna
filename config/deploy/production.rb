# frozen_string_literal: true

server '35.178.191.227', user: 'deploy', roles: %w[app db web], primary: true

role :app, %w[deploy@35.178.191.227]
role :web, %w[deploy@35.178.191.227]
role :db, %w[deploy@35.178.191.227]

set :rails_env, :production
#set :stage, :production

set :ssh_options,
    keys: ['/home/bondar/proj_ruby/QnAEs.pem'],
    forward_agent: true,
    auth_methods: %w[publickey password]

