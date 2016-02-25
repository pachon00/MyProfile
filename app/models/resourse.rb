class Resourse < ActiveRecord::Base
has_many :works
has_many :trainings
has_many :academics
has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
validates_attachment_content_type :logo, :content_type => /\Aimage\/.*\Z/
end
