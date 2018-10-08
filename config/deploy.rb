# frozen_string_literal: true

# config valid for current version and patch releases of Capistrano
lock '~> 3.11.0'

set :application, 'qna'
set :repo_url, 'git@github.com:bondar5471/qna.git'

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, '/home/deploy/qna'
set :deploy_user, 'deploy'

# Default value for :linked_files is []
append :linked_files, 'config/database.yml', 'config/private_pub.yml', 'config/private_pub_thin.yml', '.env'
# Default value for linked_dirs is []
append :linked_dirs, 'bin', 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system', 'public/uploads', 'vendot/bundle'

namespace :deploy do
  desc 'Restart app' 
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      invoke "unicorn:restart"
    end
  end

  after :publishing, :restart
end

namespace :private_pub do
  desc 'Start private_pub server'
  task :start do
    on roles(:app) do
      within current_path do
        with rails_env: fetch(:rails_env) do
          execute :bundle, "exec thin -C /qna/shared/config/private_pub_thin.yml start"
        end
      end
    end
  end

  desc 'Stop private_pub server'
  task :stop do
    on roles(:app) do
      within current_path do
        with rails_env: fetch(:rails_env) do
          execute :bundle, "exec thin -C /qna/shared/config/private_pub_thin.yml stop"
        end
      end
    end
  end

  desc 'Restart private_pub server'
  task :restart do
    on roles(:app) do
      within current_path do
        with rails_env: fetch(:rails_env) do
          execute :bundle, "exec thin -C /qna/shared/config/private_pub_thin.yml restart"
        end
      end
    end
  end
end