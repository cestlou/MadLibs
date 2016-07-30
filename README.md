# madlibsFED
Front End Templating for ChickTech Seattle July Workshop - Mad Lib Ruby Generator


#What we're building
**Mad lib Generator!**
- <a href="http://cdn.rainbowresource.netdna-cdn.com/products/032883i1.jpg">Example Mad Lib</a>
- <a href="http://www.redkid.net/madlibs/">Example of something similar to what we're making</a>



**Technologies used:**
- Front End
..- HTML5, CSS3 (Our own, as well as the Foundation framework and some animate.css)
- Back End
..- Ruby
..-Rails (a web framework)

**What's in the box:**
- two folders
..- final - finished code for if you get stuck
..- starter - outline with what you need to get started to follow along the tutorial

**Definitions**

**Views aka Routes:**
- _views (or routes because they are routes your URL takes to get somewhere) are the different sections we'll be seeing through the project, it is where all our data will live and how we direct our users to navigate. A view is often a page, but some pages can have different views - like if you're logged in on facebook you get a different homepage than if you're not logged in.

- For this project we will have 3 views.
	..- Intro page aka home. We'll call this our **index.html**
	..- Form page, where we fill in our Mab Lib and ask our program to generate the results for us once the form is filled out. We'll call this our **new.html**
	..- Results page, where we see our final product and display all of our dynamic content that we wrote on the form page. We'll call this our **show.html**

## Let's talk about front and back end and some resources to help you keep learning about both ##

- **Our Front End Resources:**
	- Front End Development includes everything that the user sees and interacts with. Most commonly this is HTML5, CSS3, and Javascript. HTML5 is your skeleton, it's the general structure of the page, Javascript (or Ruby on Rails/ERB in our case today!) is all your muscles and organs, it's what the page will actually do. And CSS3 is the skin - what it looks like.  Some of the resources we're using today are below, they can do a lot of other things than what we have time for - so we want to leave them here for you to explore:
	- Foundation by ZURB (the Twitter people)
	..- We'll use <a href="http://foundation.zurb.com/">Foundation</a> to help us get up and running faster. Foundation is a framework that helps your websites show up consistently no matter what your browser is - browsers like to style their default pages differently, using something like foundation will help you get up and running quicker. Specifically for this project, we're using Foundation to help you learn how CSS works and why it's important. It's pretty interesting to style your website from scratch (so not with Foundation or another framework's help) - both are important to know, but by starting with these building blocks we can add to them and also take them apart - helping us understand what they are each doing. The Foundation documentation has lots of details on what each of their components (these are the building blocks) do and examples of how to use them. You can find them <a href="http://foundation.zurb.com/sites/docs/">here</a>.

	- Webfonts!
	..- Specifically, <a href="https://www.google.com/fonts#">Google fonts</a>
	..- Google fonts are great because they are free, beautiful, easy to load, and tell you ahead of time what their load time will be so you know if it's going to make your page load really slow (which is not often). Using webfonts is popular among websites because it means that you don't have to have that specific font already on your computer to see the page as intended, allowing for a _consistent user experience_ (something very important).



- **Our Backend Resources**
	- The Backend is where data that is input on the front end comes to be ingested, manipulated, and stored. It's where a database would normally live (though we don't have one, for this project). This project is built using the Ruby programming language and the Rails framework. A lot of the time, you will hear "Ruby on Rails" and it can easily be misinterpreted as being one thing, because the two are used together so frequently.
	- Gemfile -- this is where our code's dependencies live. Think about it like this: we need certain things (like jQuery) that are packaged into "gems." This is how a person or team can build a product, compact it and store it in the vast Gem library, and let it be used by others in the community.

## Let's do it! ##

###Getting Set Up ###

- **GitHub**
	- You're going to need to access this codebase (called a "repository"), so why don't we start by getting set up on Github.

	- Steps:
		- Go here: https://github.com/join?source=header-home
		- Create a username (something you don't mind other people seeing - like a Twitter or Snapchat username, or your first initial and last name, any combo really)
		- Enter your email
		- Set a password (*IMPORTANT!!!* Make it easy to remember, you're going to use it throughout this project)
		- Click the Create an Account button
		- Keep the unlimited public repositories option selected (free)
		- Click Continue
		- Scroll to the bottom of the survey and hit skip (or fill it out, your choice)
		- Continue
		- You're in!
- **Cloning a Repo**

	- What now? Programming is full of phrases like this. When you clone a repo you are copying down all of the files in a project so that you too can work on it. The coolest part is that while it's the same project, it's your own version of it (or your own branch, as GitHub calls it), so you can make changes, add stuff, delete things and then if you think it's something the owner of the code would want to include in the main copy of the project you can submit it to them via a pull request to add in to their code. Just make sure to create a branch, as things in "Master" are pushed to the parent (original) copy! We won't be doing this today, but it is helpful if you and some friends want to make something together.
	- Open this link: https://github.com/CestLou/MadLibs
	- Click the green button on the right side that says "Clone or Download"
	- Select "Clone with HTTPS"
	- Copy the URL in the box
	- Open your Terminal (Shortcut: Command Button + Spacebar, type in "terminal")
	- Type the following command: git clone [copied URL here]
	- hit Enter
	- you have officially cloned the repo.
- **Let's look inside!**
	- Open the folder that we just cloned from github, it's called MadLibs, right click it and open with sublime text (that's our text editor)
	- We'll leave this open and come back after we initialize some stuff
- **Initialize the code base!**
	- Ruby is a very particular language that has a good few rules, to obey them better we're going to install a few things it relies on. Bring that terminal window back and type the following in this order, hitting enter after every line.
	- rbenv global
	- gem install rails
	- bundle install
	- ruby -v should return `Ruby 2.2.4`, please see one of us if it doesn't

- **Test Often!**
	- To make sure we have a proper rails project go to your terminal and type "rails s" - this will start your local server. In your browser go to localhost:3000 to check it out.
- **Commit often!**
	- You'll want to save your work, we're already in github so we might as well save our progress there!
	- From your terminal type
		- git add .
		- git commit -m "a note about what you just did"
		- git push (then follow the prompt your terminal gives you, it should be something like "git push origin master" but you'll only have to do that one time)

- **Deploy**
	- We will be using <a href="https://www.heroku.com/">Heroku</a> to deploy our finished madlib project. It's free, it works great with Github, and you feel a bit like a mad scientist doing it.
	- Sign up for an account on Heroku: https://signup.heroku.com/login
	- navigate your terminal to your working Mad Lib game, do this by typing "cd [your directory here]" (we'll go over this more together)
	- terminal: heroku login
	- terminal: heroku create YOUR_APP_NAME_HERE
	- if you got an error type git remote -v and call us over for help.
	- If you didn't get any errors...
	- terminal: git push heroku master
	- heroku open

- **And that's it! Now it's your turn to add to it and share with your friends.**


##fun other things##

- **Front End Jazz**

- Animation.css
	- this is just for some fun, and for anyone who likes seeing things on the screen move. CSS3 has made some great strides within page animation, with AND without javascript/jquery alongside it. Animation.css is a library that's <a href="https://github.com/daneden/animate.css">free on github</a> that allows us to animate pretty much anything in our webpages. You can also read how he accomplished his library if you want to make your own.
- Gradient Generator
	- for cool backgrounds and buttons.
	- http://www.cssmatic.com/gradient-generator
- Tutorials of all kind
	- https://teamtreehouse.com
	- https://www.codecademy.com/
