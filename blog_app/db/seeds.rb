puts "Cleaning database..."

Comment.destroy_all
Blog.destroy_all


puts "Creating published blogs..."

10.times do |i|
  blog = Blog.create!(
    title: "Published Blog #{i + 1}",
    content: "This is published blog number #{i + 1}",
    published: true
  )

  2.times do |j|
    blog.comments.create!(
      body: "Comment #{j + 1} on published blog #{i + 1}"
    )
  end
end

puts "Creating unpublished blogs..."

10.times do |i|
  Blog.create!(
    title: "Unpublished Blog #{i + 1}",
    content: "This is unpublished blog number #{i + 1}",
    published: false
  )
end
