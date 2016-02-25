class Resourse < ActiveRecord::Base
has_many :works
has_many :trainings
has_many :academics
end
