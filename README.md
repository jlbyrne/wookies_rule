# README

## Running the app locally

prerequisites: Ruby 3.1.2, Rails 7.0.2, 

After cloning the app, run `bundle install` and `yarn install` to install the dependencies.

Then, initialize and migrate the database:
```
$ rails db:create
$ rails db:migrate
```

Start the server by running:
```
$ foreman start -f Procfile.dev
```

The app should be available at (localhost:3000)[localhost:3000]!

## Running the test suite


Unfortunately, I couldn't get the test suite to run.  It looks like the `$ yarn build` command hangs forever, although the javascript is being built just fine. When esbuild was installed with rails, it looks like they 'enhanced' the regular test tasks with that command: https://github.com/rails/jsbundling-rails/blob/main/lib/tasks/jsbundling/build.rake.  I'm sure I could find a way to work around this problem, but in the interest of timeboxing the project, I'm going to leave it as is. :(
