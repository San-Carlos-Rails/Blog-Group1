class User < ActiveRecord::Base
  paginates_per 20
end
