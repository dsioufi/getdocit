namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_users
    # make_microposts
    # make_relationships
    make_jobs
  end
end

def make_users
  admin = User.create!(name:     "Example User",
   email:    "kevin@yahoo.com",
   password: "foobar",
   password_confirmation: "foobar",
   admin: true)
  # 99.times do |n|
  #   name  = Faker::Name.name
  #   email = "example-#{n+1}@railstutorial.org"
  #   password  = "password"
  #   User.create!(name:     name,
  #    email:    email,
  #    password: password,
  #    password_confirmation: password)
  # end
end

def make_jobs
  user = User.find(1)
   50.times do
    user.jobs.create!(employer: "Kevin Aditya",
    role: "Developer",
    description: "we are looking for genius developer who can count 1 to 10",
    criteria: "phd of mathematics",
    salary: 30000,
    salary_type: "Anually",
    closed_date: "12-9-2014",
    category: "Full-time",
    apply: "this is how you apply",
    location: "Sydney")
    end
end

# def make_microposts
#   users = User.all(limit: 2)
#   50.times do
#     content = Faker::Lorem.sentence(5)
#     users.each { |user| user.microposts.create!(content: content) }
#   end
# end

# def make_relationships
#   users = User.all
#   user  = users.first
#   followed_users = users[2..50]
#   followers      = users[3..40]
#   followed_users.each { |followed| user.follow!(followed) }
#   followers.each      { |follower| follower.follow!(user) }
# end