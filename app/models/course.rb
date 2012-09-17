class Course
  include Mongoid::Document
  attr_accessible :preview_link, :video, :university, :description, :social_link, :instructor, :categories, :name, :start_date, :home_link, :duration, :small_icon, :company

  field :preview_link
  field :video
  field :university
  field :description
  field :social_link
  field :instructor
  field :categories
  field :name
  field :start_date
  field :home_link
  field :duration
  field :small_icon
  field :company

  def self.load_coursera
    coursera_json = JSON.parse(File.read('json_data/coursera_list.json'))
    courses = coursera_json.each do |c|
      entry = {
        preview_link: c['preview_link'], 
        video: c['video'],
        university: c['university-ids'].first,
        description: c['short_description'],
        social_link: c['social_link'],
        instructor: c['instructor'],
        categories: c['categories'].map{|cat| cat["name"]},
        name: c['name'],
        start_date: c['courses'].map{|course| course["start_date_string"] unless course["start_date_string"].blank?},
        home_link: c['courses'].map{|course| course["home_link"]},
        duration: c['courses'].map{|course| course["duration_string"]},
        small_icon: c['small_icon'],
        company: 'Coursera'
      }
      self.create(entry)
    end
  end

  def self.load_udacity
    udacity_json = JSON.parse(File.read('json_data/udacity_list.json'))
    courses = udacity_json.each do |c|
      entry = {
        video: c['teaser']['youtube_id'],
        university: 'n/a',
        description: c['search_description'],
        social_link: "http://www.udacity.com/overview/#{c['path']}",
        instructor: c['instructors'].map{|i| i['name']}.join(','),
        categories: c['tags']['subjects'],
        name: "#{c['name']}:#{c['title']}",
        start_date: 'Now',
        duration: 'n/a',
        company: 'Udacity'
      }
      self.create(entry)
    end
  end
 
end
