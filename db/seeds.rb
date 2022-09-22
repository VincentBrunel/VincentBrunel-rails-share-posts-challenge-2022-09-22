# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Destroying old data"

User.destroy_all

user_1 = User.create!(nickname: 'test', email: 'test@test.com', password: 'azerty')
user_2 = User.create!(nickname: 'test2', email: 'test2@test2.com', password: 'azerty')

post_1 = Post.create!(content: "test post", url:"gfd", title:"test", user: user_1)
post_2 = Post.create!(content: "A very large 2nd post. A very large 2nd post. A very large 2nd post. A very large 2nd post. A very large 2nd post. A very large 2nd post. A very large 2nd post. A very large 2nd post. A very large 2nd post. A very large 2nd post. A very large 2nd post. A very large 2nd post. A very large 2nd post. A very large 2nd post. A very large 2nd post. A very large 2nd post. A very large 2nd post. ", url:"gfd", title:"test number 2", user: user_1)
post_3 = Post.create!(content: "A small post", url:"gfd", title:"test the 3rd", user: user_1)
post_4 = Post.create!(content: "ybdrgergreggergergegegegegetre", url:"gfd", title:"final of all tests", user: user_1)

comment_1 = Comment.create!(user: user_2, post: post_1, content: "that is the test 1st comment for the 1st test post")
comment_2 = Comment.create!(user: user_2, post: post_1, content: "that is the test 2nd comment for the 1st test post")
comment_3 = Comment.create!(user: user_2, post: post_1, content: "that is the test 3rd comment for the 1st test post")
comment_4 = Comment.create!(user: user_2, post: post_1, content: "that is the test 4th comment for the 1st test post")