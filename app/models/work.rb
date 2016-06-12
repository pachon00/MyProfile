class Work < ActiveRecord::Base
belongs_to :profile
belongs_to :resourse

  def to_s
    company
  end
end
