class Profile < ActiveRecord::Base

  has_many :works
  accepts_nested_attributes_for :works,
  reject_if: proc { |attr| attr['company'].blank? },
  allow_destroy: true
  
  has_many :trainings
  accepts_nested_attributes_for :trainings,
  reject_if: proc { |attr| attr['name'].blank? },
  allow_destroy: true  

  has_many :academics
  accepts_nested_attributes_for :academics,
  reject_if: proc { |attr| attr['name'].blank? },
  allow_destroy: true  

  has_many :languages
  accepts_nested_attributes_for :languages,
  reject_if: proc { |attr| attr['name'].blank? },
  allow_destroy: true  

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  def to_s
    name
  end
end
