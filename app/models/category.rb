class Category < ApplicationRecord
  has_many :courses
  validates :name, :main_programming_language, :secondary_programming_language, presence: true

  def self.accepted_names
    [ "Components", "Practices", "Packages", "Templates", "Plus Developer" ]
  end

  def self.accepted_programming_languages
    %w( Ruby RubyOnRails JavaScript ReactJS HTML5 SCSS)
  end
end
