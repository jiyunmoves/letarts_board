class Comment < ActiveRecord::Base
  belongs_to :post
  validates :content, :presence=>{:message=>"No message to post."}
end
