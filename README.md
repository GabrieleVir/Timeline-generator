# Timeline-generator

This is a project to practice Ruby on rails and creating a almost-full customizable timeline. For at it is now, this generator will create a timeline with the background-color you want, the font you want and the posts you want. 

## Technologies used:
<div style=" display:inline; ">
   <a href="https://www.ruby-lang.org/en/"><img src ='https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Ruby_logo.svg/1024px-Ruby_logo.svg.png' width="32%" height="200" ></a>

   <a href="http://rubyonrails.org/"><img src='http://sdtimes.com/wp-content/uploads/2016/07/0701.sdt-rails.jpg' width="32%" height="200" ></a>

   <a href="https://activeadmin.info/"><img src='http://railscasts.com/static/episodes/stills/284-active-admin.png' width="32%" height="200" >
</div>

## How to use it:

You can clone this repo but before launching it, you need some prerequisites: 
* [Ruby](https://www.ruby-lang.org/en/documentation/)
* [rails](http://guides.rubyonrails.org/getting_started.html)
* [MySql](https://dev.mysql.com/doc/mysql-getting-started/en/) (or another database managment system if you know what you are doing)

You change the database config in ```Timeline/config/database.yml``` to put your password and database name. You create your database with the same name. Then, in the terminal, you cd to the root (Timeline) and you put the command ```bundle install ``` and a ``` rails db:migrate ``` and create a admin user and you are ready to use the timeline generator!

To login as a admin to change the timeline, put ```/admin/login``` in the url.

The index will show the last timeline, if you want to change this, go to the timeline controller and do a loop in the index to show all the timelines.  

## What it looks like :

<div style="display:inline;">
   <a href="https://www.ruby-lang.org/en/"><img src ='https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Ruby_logo.svg/1024px-Ruby_logo.svg.png' width="33%" height="200" ></a>

   <a href="http://rubyonrails.org/"><img src='http://sdtimes.com/wp-content/uploads/2016/07/0701.sdt-rails.jpg' width="33%" height="200" ></a>

   <a href="https://activeadmin.info/"><img src='http://railscasts.com/static/episodes/stills/284-active-admin.png' width="33%" height="200" >
</div>

### For questions
Just open issues if you have problems using it, I will try to answer as fast as possible.
