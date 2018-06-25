## REQUIREMENTS:
- Experience with  Ruby and Ruby on Rails
- Knowledge of Git
- Experience with relational database + base level of SQL
- Knowledge principles of OOP, design patterns(MVC, etc), + SOLID 
- Understanding of Client-Server architecture, RESТ API, json api;
- Experience with Linux OS and web service set up
- English - at least intermediate;

### ADDITIONAL
- experience with trailblazer gem (http://trailblazer.to/blog/2017-12-trailblazer-2-1-what-you-need-to-know.html)
- experience with google api

### REQUIRED READING
- https://codeclimate.com/blog/7-ways-to-decompose-fat-activerecord-models/

## TASK:
### Create simple event management application.
#### Requirements: 
#### Level 1:
- [x] As a user I can create/edit/delete the event. Event contains such information: title, scheduled dates, list of tags
- [x] As a user I can see the list of events
- [x] As a user I can sign up/in/out 
#### Level 2 (desired, but optional):
- [ ] User can sign up/in/out with google account
- [ ] As a user I can search event by title/tags/scheduled dates
- [x] As a user I can mark event as completed 
#### Level 3 (optional):
- [ ] All events are synchronized with google calendar events
- [ ] User can get events from google calendar

#### Advised gems:
- Devise
- Omniauth-google-oauth2
- Rspec

#### Technical requirements for implementation:
- Test coverage
- Describe pattern usage in project readme (optional)
- Deployment to heroku, or any other cloud (optional)

## USAGE PATTERNS:
#### Website URL is https://mongalless-event-manager.herokuapp.com/
- Go to root of project
- If you want to create profile, click on "Sign up" link.
  - If you are already have profile, click on "Log in" link.
- "Sign up": enter any email, password for this mail, and confirm password by typing it below again, press sign up button.
  - If you are already have profile, but misclicked "Sign up" link, click on "Log in" link here.
- Click on "Go to list of events" link
  - If you want logout, click on "Logout" link.
  - If you want delete or edit profile, click on "Edit profile"
- To create new event, click on "Add new event" link on top
  - If you want examine event, click on his "Show" link
  - If you want edit event data, click on his "Edit" link
  - If you want delete event, click on his "Destroy" link
- "Add new event": 
  - Enter title, choose dates, add tags, click on "Complited" box, press "Create Event" button
- "Examine event":
  - If you want see list of events, click on "Back" link
  - If you want edit event data, click on his "Edit" link
- "Edit event": 
  - Rewrite new title, choose new dates, rewrite or add new tags, click on "Complited" box, press "Update Event" button
  - If you want see list of events, click on "Back" link
- "Delete new event":
  - Press "OK" button, to delete event
  - Press "Cancel" button, to leave it in database