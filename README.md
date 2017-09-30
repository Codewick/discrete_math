* Gem End-User Usage
  * Install [Ruby](https://www.ruby-lang.org/en/documentation/installation/)
  * Run in Interactive Ruby (IRB)
    * Run IRB `irb`
    * Load and Run Gem discrete math within IRB `require 'discrete_math'; DiscreteMath.run("default")`
    * Exit IRB `quit`
  * Run using Ruby or framework (i.e. Ruby on Rails)
    * Add to Gemfile `gem 'discrete_math'`

* Gem Developer Contributor Usage
  * Setup
    * Switch to Ruby version `rbenv use 2.4.2`
    * Install dependencies `gem install rspec; bundle install`
    * Show Gem environment and installation locations `gem env home; gem list -d`
    * Show Rake commands available `rake -T`
  * Unit Tests
    * Run Unit Tests `rake discrete:test`
      * Alternative `rspec spec/helpers/math_helpers_spec.rb`
  * Build, install, and run Gem updates on local machine
    * Change version in discrete_math.gemspec
    * Note: [Check that all used Gem files have been added to Gemspec](http://guides.rubygems.org/specification-reference/#files)
    * Uninstall specific version of previously installed discrete math gem (i.e. version 0.0.1) `rake discrete:uninstall[0.0.1]`
    * Build and install new discrete math gem version defined in discrete_math.gemspec `rake discrete:install`
    * Run
      * Default program passing argument for default mode `rake discrete:run[default]`
        * Alternative 2: See IRB instructions for General User
  * Deploy latest Gem discrete math version to RubyGems (i.e. version 0.0.2) `rake discrete:deploy[0.0.2]`

* References
  * [Create Ruby Gem](http://guides.rubygems.org/make-your-own-gem/)
  * [RSpec Tests](http://rspec.info/)
  * Rake
    * Executable and ARGV
      * [Rake Executable and ARGV](http://www.thegreatcodeadventure.com/argv-and-command-line-gems/)
      * [ARGV](https://github.com/rails/rails/blob/master/railties/lib/rails/commands.rb)
    * [Rake Task Guide](http://www.stuartellis.name/articles/rake/)
      * [Rakefile Bash Commands](https://stackoverflow.com/questions/9796028/execute-bash-commands-from-a-rakefile)
