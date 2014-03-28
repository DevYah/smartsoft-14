class Healthrecord
  include Mongoid::Document
# Adding the attributes of the class healthrecords
  field :name , type: String
  field :bmi, type: Integer
  field :fats, type: Integer
  field :height, type: Integer
  field :weight, type: Integer
  field :program, type: String
  field :bloodtype, type: String
  
  # here are the different relationships present
  belongs_to :user , class_name: 'User' , inverse_of: :records 
  has_many :diseases , class_name: 'Disease' , inverse_of: :records

 
end
