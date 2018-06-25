REQUIREMENTS:
- Experience with  Ruby and Ruby on Rails
- Knowledge of Git
- Experience with relational database + base level of SQL
- Knowledge principles of OOP, design patterns(MVC, etc), + SOLID 
- Understanding of Client-Server architecture, RESТ API, json api;
- Experience with Linux OS and web service set up
- English - at least intermediate;

ADDITIONAL
- experience with trailblazer gem (http://trailblazer.to/blog/2017-12-trailblazer-2-1-what-you-need-to-know.html)
- experience with google api

REQUIRED READING
- https://codeclimate.com/blog/7-ways-to-decompose-fat-activerecord-models/

TASK:
Create simple event management application. Requirements : 
Level 1:
- [x] As a user I can create/edit/delete the event. Event contains such information: title, scheduled dates, list of tags
- [x] As a user I can see the list of events
- [x] As a user I can sign up/in/out 
### Level 2(desired, but optional):
- [ ] User can sign up/in/out with google account
- [ ] As a user I can search event by title/tags/scheduled dates
- [x] As a user I can mark event as completed 
### Level 3(optional):
- [ ] All events are synchronized with google calendar events
- [ ] User can get events from google calendar

Advised gems:
- Devise
- Omniauth-google-oauth2
- Rspec

Technical requirements for implementation:
- Test coverage
- Describe pattern usage in project readme (optional)
- Deployment to heroku, or any other cloud (optional)