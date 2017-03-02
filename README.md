# README

# FINDmE

* Project Description

The app that I developed is called Pin-Seeker. This is a mobile-friendly application
that allows anyone to use a search form to look for golf courses in their area. The
reasoning behind creating this app is that finding golf information is a tedious and
burdensome experience. I want to give users a quick solution to that problem. Let the
users look for exactly what type of course they want, and how to get in contact with
the Pro Shop.

* User Stories

This application appeals to anyone who has a passion for playing golf. Since finding
information about golf courses is difficult, this app will allow anyone to find a golf
course with ease. For example, if someone was traveling, but still had time to play a
round of golf. Navigating a new location is difficult enough. But what's more frustrating
is finding a course you want to play, only to find out that it is a private course, or costs
way more than you expected. Pin-Seeker works to eliminate these issues.

* Technologies Used

  - HTML
  - CSS
  - Ruby
  - Ruby on Rails
  - Javascript
  - Nokogiri
  - Materialize.scss

* Steps for Installation (Local)
  In the console...

  - bundle install
  - rails db:setup
  - rails server

* Code I'm Proud Of
``` ruby
<div class="row container">
  <%= form_tag({controller: "courses", action: "search"}, method: "get") do %>
  <h3>Select a City:</h3>
  <div class="input-field col s12">
    <%= select_tag(:city, options_for_select(@courses.map{ |c| [c.city]}.sort)) %>
  </div>
  <h3>Select a Course Type:</h3>
  <div class="input-field col s12">
    <%= check_box_tag(:public) %>
    <%= label_tag(:public, "Public Golf Course") %>
  </br>
  <%= check_box_tag(:private) %>
  <%= label_tag(:private, "Private Golf Course") %>
</br>
<%= check_box_tag(:municipal) %>
<%= label_tag(:municipal, "Municipal Golf Course") %>
</div>
<div class="input-field col s12 submit">
<%= submit_tag("Search Courses", class: "btn green darken-4") %>
<% end %>
```

* Wish List / Future Development


* Links
Wireframes:
Database Relationships
Heroku: https://mysterious-bastion-17458.herokuapp.com/
