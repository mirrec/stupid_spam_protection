# StupidSpamProtection

Idea behind this very simple spam protection is validate attribute that it is empty.
Spam boots fill in all form they can find on page. We will add one virtual attribute :robot.
Usually it is a good idea to hide input with come css styling.

## Installation

Add this line to your application's Gemfile:

    gem 'stupid_spam_protection'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install stupid_spam_protection

## Usage

    class Message < ActiveRecord::Base
      attr_accessible :text

      extend StupidSpamProtection
    end

    m = Message.new(:text => "some text", :robot => "")
    m.save # => true (record will be saved, because robot attribute is empty)

    m = Message.new(:text => "some text", :robot => "sdf54")
    m.save # => false (record won't be saved, because robot attribute is not blank)
    m.robot = ""
    m.save # => true

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
