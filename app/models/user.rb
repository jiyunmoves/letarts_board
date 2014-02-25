class User < ActiveRecord::Base
  validates :username, :presence=>{:message=>"Put your username!!!"}
  validates :username, :uniqueness=>{:message=>"Nononono this username is taken.", :case_sensitive=>false}
  validates :password, :length=>{:minimum=>6, :too_short=>"Think about it, at least 6 letters"}
end
