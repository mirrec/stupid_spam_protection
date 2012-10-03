require "stupid_spam_protection/version"

module StupidSpamProtection
  def self.extended(base)
    base.class_eval do
      attr_accessible :robot
      attr_accessor :robot
      validates :robot, :length => {:maximum => 0}
    end
  end
end
