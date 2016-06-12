class Language < ActiveRecord::Base
	belongs_to :profile

 def to_s
    name
  end
end
