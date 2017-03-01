Course.destroy_all


  course_page = Nokogiri::HTML(open("https://www.golfmax.com/Golf-Courses/New-Jersey-Golf-Courses.shtml"))
    courses = course_page.css('td a.navblue')
    names_array = []
    courses.map do |a|
      course_name = a.text
      names_array.push(course_name)
    end
    course_data = []
      names_array[0..100].each do |el|
        course_data << {
          name: el,
          state: 'NJ',
          city: FFaker::Address.city,
          public: FFaker::Boolean.random,
          private: FFaker::Boolean.random,
          municipal: FFaker::Boolean.random,
          cost: "$40-$60",
          phone: FFaker::PhoneNumber.short_phone_number
        }
    end

Course.create(course_data)
