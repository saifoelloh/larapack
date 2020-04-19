## Larapack

Simple and stupid dockerfile to create or build your laravel project, this image base on php:7.2-fpm and we added npm to run your laravel with extra dependency from nodejs and you don't need to worry about permission because we already create a **foo** user for you and current working directory is inside `/home/foo/app`

Start your laravel project with us:

- docker pull saifoelloh/larapack:1.0
- to create laravel project simply you execute this command

  `docker run --rm -it -v $PWD:/home/foo/app saifoelloh/larapack composer create-project --prefer-dist laravel/laravel ${name}`

- move inside that project

  `cd ${name}`

- run laravel with larapack

  `docker run --rm -it $PWD:/home/foo/app -p 8000:8000 saifoelloh/larapack php artisan serve --HOST=0.0.0.0`
