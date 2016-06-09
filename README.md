# OTO API #

## Routes ##


| Verb   | URI Pattern            | Controller#Action |
| ----   | -----------            | ----------------- |
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| DELETE | `/sign-out/:id`        | `users#signout`   |
| PATCH  | `/change-password/:id` | `users#changepw`  |
| GET    | `/users`               | `users#index`     |
| GET    | `/users/:id`           | `users#show`      |
| POST   | `/trips`             | `trips#create`  |
| GET    | `/trips`             | `trips#index`   |
| GET    | `/trips/:id`         | `trips#show`    |
| PATCH  | `/trips/:id`         | `trips#update`  |
| DELETE | `/trips/:id`         | `trips#destroy` |
| POST   | `/invitations`             | `invitations#create`  |
| GET    | `/invitations`             | `invitations#index`   |
| GET    | `/invitations/:id`         | `invitations#show`    |
| PATCH  | `/invitations/:id`         | `invitations#update`  |
| DELETE | `/invitations/:id`         | `invitations#destroy` |

## Schemas ##

### User ###
|column name|type|
|-----|------|
|email|STRING|
|token|STRING|
|password|STRING|
|first_name|STRING|
|last_name|STRING|

### Trip ###
|column name|type|
|-----|------|
|name|STRING|
|start_date|DATE|
|end_date|DATE|
|location|STRING|
|description|TEXT|
|user_id|FOREIGN KEY|

### Invitation ###
|column name|type|
|-----|------|
|user_id|FOREIGN KEY|
|trip_id|FOREIGN KEY|
|status|STRING|

## Links ##
- Deployed OTO on gh-pages: http://soynog.github.io/oto-client/
- API Back-End Repo: https://github.com/soynog/oto-api
- Deployed API: https://oto-api.herokuapp.com/
