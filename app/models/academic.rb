class Academic < ActiveRecord::Base
belongs_to :profile
belongs_to :resourse	

 def to_s
    name
  end
end
