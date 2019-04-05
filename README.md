# Your awesome microservice in Ruby

![Microservice](https://img.shields.io/badge/microservice-ready-brightgreen.svg?style=for-the-badge)
[![CircleCI](https://img.shields.io/circleci/project/github/microservices/ruby/master.svg?style=for-the-badge)](https://circleci.com/gh/microservices/ruby)

An OMG template for Ruby.

Usage
-----

```coffee
# Storyscript
your_service message name: 'Peter'
# {"message": "Hello Peter"}
```

Test
----

```sh
> omg run message -a name=Service
ℹ Building Docker image
…
✔ Built Docker image with name: omg/l2hvbwuvc2vil2fzew5jes9ydwj5
✔ Started Docker container: 1c8a91688261
✔ Health check passed
✔ Ran action: `message` with output: {"message":"Hello Service"}
✔ Stopped Docker container: 1c8a91688261
```
