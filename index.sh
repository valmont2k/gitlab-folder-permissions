# Holds repositories directory
sudo chown -R -v git:root /var/opt/gitlab/git-data
sudo chmod -R -v 0700 /var/opt/gitlab/git-data
 
# Holds git repositories
sudo chown -R -v git:git /var/opt/gitlab/git-data/repositories
sudo chmod -R -v 2770 /var/opt/gitlab/git-data/repositories
 
# Holds large object directories
sudo chown -R -v git:gitlab-www /var/opt/gitlab/gitlab-rails/shared
sudo chmod -R -v 0751 /var/opt/gitlab/gitlab-rails/shared
 
# Holds CI artifacts
sudo chown -R -v git:root /var/opt/gitlab/gitlab-rails/shared/artifacts
sudo chmod -R -v 0700 /var/opt/gitlab/gitlab-rails/shared/artifacts
 
# Holds LFS objects
sudo chown -R -v git:root /var/opt/gitlab/gitlab-rails/shared/lfs-objects
sudo chmod -R -v 0700 /var/opt/gitlab/gitlab-rails/shared/lfs-objects
 
# Holds user attachments
sudo chown -R -v git:root /var/opt/gitlab/gitlab-rails/uploads
sudo chmod -R -v 0700 /var/opt/gitlab/gitlab-rails/uploads
 
# Holds user pages
sudo chown -R -v git:gitlab-www /var/opt/gitlab/gitlab-rails/shared/pages
sudo chmod -R -v 0750 /var/opt/gitlab/gitlab-rails/shared/pages
 
# Holds CI build logs
sudo chown -R -v git:root /var/opt/gitlab/gitlab-ci/builds
sudo chmod -R -v 0700 /var/opt/gitlab/gitlab-ci/builds
 
# PostgreSQL
sudo chown -R -v gitlab-psql:git /var/opt/gitlab/postgresql/data
sudo chmod -R -v 0700  /var/opt/gitlab/postgresql/data
 
sudo gitlab-ctl reconfigure
sudo gitlab-rake gitlab:check
