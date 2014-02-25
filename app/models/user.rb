class User < ActiveRecord::Base
  validates :username, :presence=>{:message=>"Put your username!!!"}
  validates :username, :uniqueness=>{:message=>"Nononono this username is already taken.", :case_sensitive=>false}
  validates :password, :length=>{:minimun=>6, :too_short=>"Think about it, a password usually  needs to be at least 6 letters to be a password"}
end
