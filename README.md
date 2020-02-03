# MyBobaStory API

An API to store user's boba drink purchased from their favorites or new places.
Users can create, edit, and delete their entries

[GitHub](https://only1nglen.github.io/Project_2_Client/)

## API URL

```js
production: 'https://limitless-cove-86144.herokuapp.com/',
development: 'http://localhost:4741'
```

## API End Points

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| DELETE | `/sign-out`            | `users#signout`   |
| PATCH  | `/change-password`     | `users#changepw`  |
| GET    | `/drinks`               | `drinks#index`     |
| POST   | `/drinks`               | `drinks#create`    |
| PATCH  | `/drinks/:id`           | `drinks#update`    |

All data returned from API actions is formatted as JSON.

## ERD

[Imgur](https://i.imgur.com/vPITiCK.jpg?2)


To Do:
Users is accessible at the moment to the public
