# Nama - Backend Evaluation Problem

This is a project to evaluate the backend Nama problem.
I implemented a ruby gem library that test the extract of labels from interval as the requirement.
I tried to use the best practices for a backend project and all methods are tested. I choose minitest as the test framework because has the simplest setup.
The project was developed under git flow and pull request made the atomic commits on master branch.

100% test coverage:
![](https://github.com/rpossan/files/blob/master/nama/coverage.png)

100% free of smell code following the comunity convention (using Rubocop tool):
![](https://github.com/rpossan/files/blob/master/nama/code.png)

## Installation

Checkout the code and then execute:

```ruby
bundle install
rake test
```

Or try running on a docker container:

    $ docker build -t nama .  

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Nama project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/nama/blob/master/CODE_OF_CONDUCT.md).
