# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# Roles
admin = Role.create({name: "Admin", description: "Can perform any CRUD operation on any resource"})
regular = Role.create({name: "Regular", description: "Can read items"})

# Users
gwen = User.create({name: "Gwen", email: "gwen@listenup.com", password: "admin", password_confirmation: "admin", role_id: 1})
user = User.create({name: "User", email: "user@listenup.com", password: "listenup", password_confirmation: "listenup", role_id: 2})

# Narrators
Narrator.create!({name: "Stephen Fry", accent: "British", gender: "male", voices: "yes"})
Narrator.create!({name: "Tim Robbins", accent: "American", gender: "male", voices: "no"})
Narrator.create!({name: "Jake Gyllenhaal", accent: "American", gender: "male", voices: "no"})
Narrator.create!({name: "Davina Porter", accent: "British", gender: "female", voices: "yes"})

# Audiobooks
Audiobook.create!({title: "Outlander", author: "Diana Gabaldon", category: "fantasy", narrator_id: "4"})
Audiobook.create!({title: "Fahrenheit 451", author: "Ray Bradbury", category: "classics", narrator_id: "2"})
Audiobook.create!({title: "The Great Gatsby", author: "F. Scott Fitzgerald", category: "classics", narrator_id: "3"})
Audiobook.create!({title: "The Mists of Avalon", author: "Marion Zimmer Bradley", category: "fantasy", narrator_id: "4"})
Audiobook.create!({title: "More Fool Me", author: "Stephen Fry", category: "memoir", narrator_id: "1"})
Audiobook.create!({title: "Harry Potter", author: "J.K. Rowling", category: "fantasy", narrator_id: "1"})