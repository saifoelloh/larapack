## Larapack

Simple and stupid dockerfile to create or build your laravel project, this image base on php:7.2-fpm

Start your laravel project with us:

```
- docker pull saifoelloh/larapack:1.0
- docker run --rm -it -u 'user' -v $PWD:/app -w /app saifoelloh/larapack:1.0 composer create-project --prefer-dist laravel/laravel ${name}
- cd ${name}
- docker run --rm -it -u 'user' -v $PWD:/app -w /app -p 8000:8000 saifoelloh/larapack:1.0 php artisan serve --HOST=0.0.0.0
- laravel has run on your local ip with port 8000
```
