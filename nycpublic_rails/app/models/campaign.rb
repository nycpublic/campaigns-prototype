class Campaign < ActiveRecord::Base
  attr_accessible :description, :end_date, :name, :start_date, :organizer_id
  belongs_to :organizer, :class_name => 'User'
end
