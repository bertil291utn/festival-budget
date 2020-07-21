# Festival budget mobile-first design

### This is an app for grouping payments by a goal with your family/friends. Want to go to a festival musical, use this app to do a budget

![image](https://user-images.githubusercontent.com/24902525/85045789-13c16780-b155-11ea-8da9-597991e58d93.png)

## Built With 

- Ruby v2.7.0
- Ruby on Rails v5.2.4

## Live Demo

[:globe_with_meridians::computer:](https://festival-budget.herokuapp.com/)

**Try opening on a phone or just inspect your browser.** *Preferably: 500x810 size*


## Getting Started

In order to start with this project You need the next:

1. [Ruby environment](https://www.ruby-lang.org/en/documentation/installation/) installed
2. [Ruby on Rails](https://www.theodinproject.com/courses/ruby-on-rails/lessons/your-first-rails-application-ruby-on-rails) framework
3. And get a copy of this project [this repository :blue_book:](https://github.com/bertil291utn/festival-budget.git)

### Prerequisites

Ruby: 2.7.0
Rails: 5.2.4
PostgreSQL: >=9.5

### Setup

Install gems with:

```
bundle install
```

Setup database with:

```
rails db:migrate
```

### Usage

Start server with:

```
rails server
```

- Open `http://localhost:3000/` in your browser, you will see the first screen.
- Create a user, log in  and start using this nice app

## Testing

> We are using [RSpec testing tool](https://rspec.info/) for testing. Also some detailed [documentation](https://relishapp.com/rspec/docs) about this tool.
And [Capybara](http://teamcapybara.github.io/capybara/) with SeleniumChrome Driver to integration tests

### Install & setting up environment 

1. Let’s add the following to our Gemfile under the `:development` and `:test` group.
    ```
    # The RSpec testing framework
    gem 'rspec-rails'

    # Capybara, the library that allows us to interact with the browser using Ruby
    gem 'capybara'

    # The following gems aids with the nuts and bolts
    # of interacting with the browser.
    gem 'webdrivers'
    ```

2. Install Rspec

    Although we’ve already installed the RSpec gem, we haven’t installed RSpec into our application. 
    ```
    $ rails g rspec:install
    ```

3. Add the following to the bottom of `spec/rails_helper.rb:`

    ```
    Capybara.default_driver = :selenium_chrome
    ```


    Check [these instructions](https://www.codewithjason.com/rails-testing-hello-world-using-rspec-capybara/) if you have problems.

### Run

- Whether it's integration or unit test, create a file `<your name file>_spec.rb`
- Write some rules to run your test.(Check Capybara [documentation](https://rubydoc.info/github/teamcapybara/capybara/master) )
- Open a Terminal window and then run this block code
`rspec spec/<you directory path>/<your file name>.rb`
- Check if your test passed or it's throwing errors

## Deployment on Heroku

In beforehand you have had committed all your changes

1. In your terminal run to create a Heroku Application
    ```
    heroku create
    ```
2. Configure the Gemfile
    To deploy a Rails application, we need to change some settings.

    First, we need to open the Gemfile and edit it.
    When VSCode opens, you should see a list of files on the left side of the screen. Click on Gemfile to open it in the editor. Then, delete the line that says, `gem 'sqlite3'` and replace the line you just deleted with the following:
    ```
    group :development, :test do
    gem 'sqlite3'
    end

    group :production do
    gem 'pg'
    end
    ```
3. Install bundle   
    Next, we need to tell Ruby, Git, and Heroku that we’ve changed the Gemfile. To do this, we can simply run

    ```
    bundle install --without production
    ```
4. Push to Heroku
    Now that we’ve committed the files, we can push to Heroku:
    ```
    git push heroku master
    ```
5. Migrate the Database on Heroku
    Similar to what we did locally before we launched our app, we need to migrate the database on Heroku, which we can do with the Heroku CLI.

    Run this command:

    ```
    heroku run rails db:migrate
    ```
6. Visit your new application

    It’s time to see your app on the web! If you are using Linux or Mac, you can quickly open your app with the command below. If you are using WSL it will not open automatically, however, you will get an error message containing the link to copy and paste in your browser:

    ```
    heroku open
    ```

    Check [these instructions](https://www.theodinproject.com/courses/ruby-on-rails/lessons/your-first-rails-application-ruby-on-rails?ref=lnav#step-3-deploy-your-rails-application) if you have problems.

## Improvements

Features we are going to add to this app:
- Popping up a message when the budget for a festival has reached out
- Adding also web design to have both web and mobile designs
- Save in media management server (Cloudinary or S3) images and all media-related 

## Author

👤 **Bertil Tandayamo**

- Github: [@bertil291utn](https://github.com/bertil291utn)
- Twitter: [@btandayamo](https://twitter.com/batandayamo)
- LinkedIn: [Bertil Tandayamo](http://bit.ly/bertil_linkedin)

## Credits
📄💻 Layouts [design](https://www.behance.net/gallery/19759151/Snapscan-iOs-design-and-branding?tracking_source=) by [Gregoire Vella on Behance](https://www.behance.net/gregoirevella)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

## Show your support

If you got until here, show your love hitting the ⭐️ button, I'd really appreciate it.

