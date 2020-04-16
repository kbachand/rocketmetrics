# README

This covers basic wireframe for this project. This project will pull in data from Google's PageSpeed Insights API as well as Google's Safe Browsing API. The goal will be to allow users to sign up and check URL's against both API's and select a check frequency.

Required MVP features (X = completed):

X* Create application 

X* Create way to add URL's to check along with CRUD methods to manipulate URL's. 

X* Add HTTParty gem to talk to API's

X* Test Pagespeed Insights API and Safe Browsing API

* Add Devise gem to allow users to create accounts as well as create root account for user and URL management. 

* Create way to allow users to manually run check each URL and display message while result loads (both API's take time to display response).

* Define metrics to pull through both API's to display to users

* Create way for users to select check frequency and dedicated results page to view past results and automate checks.

* Create way to send email to users email IF check results fail. 

* Integrate Stripe or other payment gateway to pay for the service

* Lock out users from adding more than one URL without paying and based on frequency of automated check. 

* Deploy to Heroku 


Other features to build out after MVP:

* Integrate Builtwith API to display technologies used on each URL (check if way to determine versions of technologies used)

* Create way to check if versions of (wordpress or PHP for example) are out of date and IF so send email to users email. 

* Get granular with results to display (create graphs/charts based on data)

* This list will continue to grow. 
