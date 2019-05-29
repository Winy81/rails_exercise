User.create!(
 email: "test1@test.com",
 password: "password",
 password_confirmation: "password",
 name: "Admin_User",
 roles: "admin",
 activity: true
)

puts "admin user has been created"

User.create!(
 email: "test2@test.com",
 password: "password",
 password_confirmation: "password",
 name: "User",
 roles: "editor",
 activity: true
)

puts "regular user has been created"

User.create!(
 email: "test3@test.com",
 password: "password",
 password_confirmation: "password",
 name: "Blocked_User",
 roles: "editor",
 activity: false
)

puts "forbidden user has been created"





