# Festival budget app

> RoR capstone project developed. It's is based on an app for grouping payments by goal with your family/friends.

![image](https://user-images.githubusercontent.com/24902525/84659805-9b04a600-aedd-11ea-8e50-5a5a5adc23c5.png)

## Built With 

- Ruby v2.7.0
- Ruby on Rails v5.2.4

## Live Demo

[:globe_with_meridians::computer:](https://festival-budget.herokuapp.com/)

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

Instal gems with:

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
- Create an user, login  and start using this nice app

## Testing

> We are using [RSpec testing tool](https://rspec.info/) for testing. Also some detailed [documentation](https://relishapp.com/rspec/docs) about this tool.
And [Capybara](http://teamcapybara.github.io/capybara/) with SeleniumChrome Driver to integration tests

### Install & setting up environment 
Follow these [instructions](https://www.codewithjason.com/rails-testing-hello-world-using-rspec-capybara/) to set up your environment. This integrations configuration it's set up to run on Chrome browser, be sure you have installed first. 

### Run

- Whether it's integration or unit test, create a file `<your name file>_spec.rb`
- Write some rules to run your test.(Check Capybara [documentation](https://rubydoc.info/github/teamcapybara/capybara/master) )
- Open a Terminal window and then run this block code
`rspec spec/<you directory path>/<your file name>.rb`
- Check if your test passed or it's throwing errors

### Deployment

Follow these [instructions](https://www.theodinproject.com/courses/ruby-on-rails/lessons/your-first-rails-application-ruby-on-rails?ref=lnav#step-3-deploy-your-rails-application) to deploy your application on [Heroku](https://www.heroku.com/) 

- After **Step 3.1** skip to **Step 3.5** because already we have all before changes.
  

## Author

👤 **Bertil Tandayamo**

- Github: [@bertil291utn](https://github.com/bertil291utn)
- Twitter: [@btandayamo](https://twitter.com/batandayamo)
- LinkedIn: [Bertil Tandayamo](http://bit.ly/bertil_linkedin)

## Credits
📄💻 Layouts [design](https://www.behance.net/gallery/19759151/Snapscan-iOs-design-and-branding?tracking_source=) by [Gregoire Vella on Behance](https://www.behance.net/gregoirevella)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

## Show your support

Give a ⭐️ if you like this project!

