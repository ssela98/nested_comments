# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

post = Post.create(title: 'A Post', content: 'some post content')
parent = Comment.create(post: post, content: 'a comment')
reply = Comment.create(post: post, parent: parent, content: 'a reply')
Comment.create(post: post, parent: reply, content: 'another reply')

Comment.create(post: post, content: 'another comment')
