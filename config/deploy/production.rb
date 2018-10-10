# frozen_string_literal: true

server '35.177.149.188', user: 'deployer', roles: %w[app db web], primary: true

role :app, %w[deployer@35.177.149.188]
role :web, %w[deployer@35.177.149.188]
role :db, %w[deployer@35.177.149.188]

set :rails_env, :production
set :stage, :production

set :ssh_options,
    keys: ['/home/bondar/proj_ruby/qnasample/qna/QA.pem'],
    forward_agent: true,
    auth_methods: %w[publickey password]
