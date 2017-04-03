Example application for https://github.com/lucashpandolfo/heroku-buildpack-cl2
(Adapted from https://github.com/avodonosov/heroku-cl-example2)

It just runs fresh Hunchentoot server.

## Instructions:
First, get yourself set up with a [Heroku account and tools](http://devcenter.heroku.com/articles/quickstart).

When you have a git repository with your application (for example by forking this one),
you can register it as a Heroku app using the buildpack:

    heroku create -s cedar --buildpack https://github.com/lucashpandolfo/heroku-buildpack-cl2

And deploy:

    git push heroku master

That's it!
You can open the app:

    heroku open

