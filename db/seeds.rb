# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create name: :sample_user, email: :none
User.create name: '宝石 太郎', email: :none
Tag.create name: :ruby
Tag.create name: :料理
Tag.create name: :python
Give.create user_id: 2, title: :ruby, about: 'rails教えます'
Give.create user_id: 2, title: :life, about: '人生相談しませんか'
Want.create user_id: 1, title: :python, about: '機械学習が教えてください'
Want.create user_id: 1, title: :zsh, about: 'イケイケなzshrcありませんか'
