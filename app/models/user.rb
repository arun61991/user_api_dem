class User
  include Mongoid::Document
  include Mongoid::Timestamps
  field :first_name, type: String
  field :last_name, type: String
  field :email, type: String

  
  scope :search, -> (query) { where(first_name: /.*#{query.downcase}.*/).or(User.where(last_name: /.*#{query.downcase}.*/)).or(User.where(email: /.*#{query.downcase}.*/))}
end
