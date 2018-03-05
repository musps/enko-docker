
# CMD

```
# Laravel
docker exec enko-app composer create-project --prefer-dist laravel/laravel api

docker exec -w /var/www/api enko-app php artisan make:migration user
docker exec -w /var/www/api enko-app php artisan migrate
docker exec -w /var/www/api enko-app php artisan make:seeder UserSeeder
docker exec -w /var/www/api enko-app composer dump-autoload
docker exec -w /var/www/api enko-app php artisan db:seed --class=UserSeeder

```