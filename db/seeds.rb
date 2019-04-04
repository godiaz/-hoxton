# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Creating some cool courses...'

  nameArray = [ "Components", "Practices", "Packages", "Templates", "Plus Developer" ]
  programmingLanguage = %w( Ruby RubyOnRails JavaScript ReactJS HTML5 SCSS)
  secondaryLanguage = %w( SEO GraphQL Mongo Postgresql API Cards ConfigFile Routes )
  courseNames = %w( first second third fourth fifth sixth seventh eigth ninth tenth )

  first_user = User.new(
    first_name: 'Gonzalo',
    last_name: 'Diaz',
    student: 'false',
    instructor: 'true',
    email: 'gonzalo@gmail.com',
    password: 'hoxton100'
    )

    first_user.save!

  20.times do

    categories = Category.new(
        name: nameArray.sample,
        main_programming_language: programmingLanguage.sample,
        secondary_programming_language: secondaryLanguage.sample
      )

      categories.save!

    course =  Course.new(
        user:           first_user,
        name:           courseNames.sample,
        description:    'Jump a few places up in Google Results with this course',
        topic:          'SEO',
        summary:        'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English.',
        category:        categories
      )

      course.save!
  end


puts 'Database Created!'
