require 'random_data'

# Create Topics
15.times do
  Topic.create!(
    name: RandomData.random_sentence,
    description: RandomData.random_paragraph
  )
end
topics = Topic.all

#Create posts
50.times do
  Post.create!(
    topic: topics.sample,
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end
posts = Post.all

#Unique post
post = Post.find_or_create_by!(
  topic: topics.sample,
  title: "Here's a unique test",
  body: "Here's the body of that test"
)

#Create comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

Comment.find_or_create_by!(
  post: post,
  body: "Unique comment"
)

puts "Seeds finished"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
