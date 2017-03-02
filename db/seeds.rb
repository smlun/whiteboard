# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
dummy_content = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In eu diam magna. Maecenas et tellus id turpis varius sagittis vitae a erat. Nulla accumsan convallis vulputate. Suspendisse non erat purus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec a lobortis metus. Fusce nec nisl purus. Ut id mi id mi rhoncus dapibus at a urna. Donec ullamcorper congue consequat. Fusce euismod consequat dui, id condimentum nulla pellentesque sed.'

newuser = User.create({username: 'railspractice91', email: 'railspractice91@gmail.com', password: 'password', password_confirmation: 'password'})

topics = Topic.create([{title: "How do we do testing on Rails?", content: dummy_content, user: newuser},
                       {title: "Where do we start on learning GIT?", content: dummy_content, user: newuser},
                       {title: "Should we learn Angular.js or React.js?", content: dummy_content, user: newuser},
                       {title: "Is xecutioner a typo?", content: dummy_content, user: newuser}])

comments = Comment.create([{content: "This is a test", ratings: 5, user_id: 1, topic_id: 3},
                           {content: "This is a test", ratings: 3, user_id: 1, topic_id: 3},
                           {content: "This is a test", ratings: 8, user_id: 1, topic_id: 3}])