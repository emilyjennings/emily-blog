# Emily's Blog

This project was made for the purpose of housing my own blog. Since I learned Ruby, the most obvious use case for me is a blog. I wanted visitors to be able to visit my website and be linked to my blog, and I knew I could build such a thing, so I did.

Users will be able to view my posts, which I can post by logging in. They can post comments and filter by categories (soon).

### 5.23 notes:

I did some styling and figured out how to get markdown in my blog posts using a gem called redcarpet.

The heroku problem before turned out to just be me not realizing that I was successfully logging in and out since I didn't ahve the logout action set up correctly.

## 4.28 note:
I am having trouble creating seeds and deploying to heroku.

## Design planning 4/23/19:

The user sees a large blog title and a smaller subtitle above it. below will be links - about tags dates homepage

dropdown nav menu only viewable by admin - login, logout, new post

a small line separates that header from posts which are placed into boxes by date with a preview. User can click on the box to read, and can post a comment.

## How to Start this project (even though it's hosted on herokuapp)

run $ bundle install
run $ rails s

navigate to http://localhost:3000/ on your browser.

Or just visit it at https://emily-jennings-blog.herokuapp.com/
