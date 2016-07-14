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
..- Ruby on Rails 

**Views:**
- _views are the different sections we'll be seeing through the project, it is where all our data will live and how we direct our users to navigate. A view is often a page, but some pages can have different views - like if you're logged in on facebook you get a different homepage than if you're not_

- For this project we will have 3 views.
	..- Intro page aka home. We'll call this our **index.html**
	..- Form page, where we fill in our madlib and ask our program to generate the results for us once the form is filled out. We'll call this our **form.html**
	..- Results page, where we see our final product and display all of our dynamic content that we wrote on the form page. We'll call this our **results.html** 

## Let's talk about front and back end and some resources to help you keep learning about both ##

- **Our Front End Resources:**
	- Foundation by ZURB (the Twitter people)
	..- We'll use <a href="http://foundation.zurb.com/">Foundation</a> to help us get up and running faster. Foundation is a framework that helps your websites show up consistently no matter what your browser is - browsers like to style their default pages differently, using something like foundation will help you get up and running quicker. Specifically for this project, we're using foundation to help you learn how CSS works as moving pieces (CSS is what makes websites pretty/readable/interactive and is quickly getting more and more handy), sometimes called modules. It's pretty interesting to do from scratch - both are important to know, but by starting with these building blocks we can add to them and also take them apart - helping us understand what they are each doing. The Foundation documentation has lots of details on what each of their components (these are the building blocks) do and examples of how to use them. You can find them <a href="http://foundation.zurb.com/sites/docs/">here</a>.
	
	- Webfonts! 
	..- Specifically, <a href="https://www.google.com/fonts#">Google fonts</a> 
	..- Google fonts are great because they are free, beautiful, easy to load, and tell you ahead of time what their loadtime will be so you know if it's going to make your page load really slow (which is not often). Using webfonts is popular among websites because it means that you don't have to have that specific font already on your computer to see the page as intended, allowing for a _consistent user experience_ (something very important).
	
	- Animation.css
	..- this is just for some fun, and for anyone who likes seeing things on the screen move. CSS3 has made some great strides within page animation, with AND without jquery alongside it. Animation.css is a library that's <a href="https://github.com/daneden/animate.css">free on github</a> that allows us to animate pretty much anything in our webpages. You can also read how he accomplished his library if you want to make your own. 

#Steps:
	1) Set up Environment
	2) Layout pages
	3) Build back end 
	4) Connect backend with front end 
	5) Test! 

Steps to get up and running: 

Clone Repo 
Gem install Bundler
bundle install 
rails s

