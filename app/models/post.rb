class Post < ActiveRecord::Base
  has_many :comments
  validates :content, :presence=>{:message=>"You don't have saying to post yet."}
end
