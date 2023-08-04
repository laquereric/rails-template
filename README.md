# Rails Template

Rails 7 application template that includes TailwindCSS and Vite.

### Instructions

1. Clone this repository
2. Go to the repository folder
3. Open `config/application.rb` and rename `PlaceholderName` to your project's name in camel case (e.g. `CoolProject`)
4. Go to `config/database.yml` and replace all occurrences of `placeholder_name` with your project's name in snake case (e.g. `cool_project`)
5. Run `bundle install`
6. Run `yarn install` (or `npm install`)
6. Run `rails db:setup`
7. Run the project with `foreman start -f Procfile.dev`
