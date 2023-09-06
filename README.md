# Yet another Docker skeleton
A simple docker-compose structure built on PHP, MySQL & NGINX to easily develop any PHP application.

### Environment composition
- Docker Compose 3.1
- Nginx (latest version)
- PHP 8.2
- MySQL 8.0

## Commands with `Makefile`
```bash
# Build the application & shell into it
$ make build

# Launch application & shell into it
$ make boot

# Stop application, relaunch it & shell into it
$ make reboot

# Shell into application
$ make shell

# Shell into application's database
$ make shell-db

# Shutdown application
$ make shutdown
```