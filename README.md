# READ ME

*Flarester* allows users to create and/or join events in their area--similar to 'Meetup' in this way, *Flarester* differentiates itself by aiming to provide these services only for near-future events--events occuring within two hours of being listed. Once created, listings populate to the local event list and are automatically removed once their scheduled time has passed.  

*Flarester* creates opportunities for casual networking, promotes new friendships and amplifies the user's ability to expand their world.

Future functionality will allow users to update events they've created and remove them from view prior to their expiration. 



                                                 Create an account
                                                  
![](eventFlare_create.gif)

-----------------------------------------------------------------------------------------------------------------------------------

                                      Log in to view current events in your area
                                                       
![](eventFlare_loginAndView.gif)

-----------------------------------------------------------------------------------------------------------------------------------

                                                   Join an event
                                                   
![](eventFlare_joinEvent.gif)  

-----------------------------------------------------------------------------------------------------------------------------------

                                              Create and list an event
                                              
![](eventFlare_createYourOwnEvent.gif)

-----------------------------------------------------------------------------------------------------------------------------------

![](eventFlare_seeYourEvent.gif)

-----------------------------------------------------------------------------------------------------------------------------------

                                                Back out of an event
                                                
![](eventFlare_backOut.gif)

-----------------------------------------------------------------------------------------------------------------------------------

                                             View and edit your profile
                                             
![](eventFlare_viewEditProfile.gif)

-----------------------------------------------------------------------------------------------------------------------------------


**We used Ruby version 2.6.1**

**Once you've cloned the repo, make sure to run the following commands from the app's directory:**
- `bundle install`
- `rails db:create`
- `rails db:migrate`
- `rails db:seed`
   - You can add additional city and location objects in app/db/seed.rb--if you do, make sure to run 
    `rails db:seed` again. 
    
**Run the app**
-Just type `rails s` into your command line (from the app's directory, of course) and hit return. You should be up and running!


- The app does have a test suite--if you plan on running it, you'll need to install Rspec with `rails g rspec:install` 
Once installed, simply type `rspec` into the command line and hit return--this should run the suite.


-----------------------------------------------------------------------------------------------------------------------

**Our app is on Heroku! Save time and check it out at the link below:**

https://powerful-eyrie-94140.herokuapp.com/

And now that you have an extra minute or two, watch our demo on YouTube:
https://www.youtube.com/watch?v=qXVh9aJf92c&feature=youtu.be  

- Login page image courtesy of https://unsplash.com/ !
- Credit also goes to  https://fonts.google.com/ (*Flarester* uses Racing Sans One for its logo)

Thanks for stopping by :thumbsup: :thumbsup:

         "Every great developer you know got there by solving problems they were unqualified to solve 
          until they actually did it." 
                                                                              - Patrick McKenzie





# flarester
# flarester
