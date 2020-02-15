---
Rules
---
1   Use Ruby on Rails Framework - √

2   Models must include: √
        •   One has_many, one belongs_to, two has_many :through relationships 
        •   Include a many-to-many relationship implemented with has_many :through   
            associations. The join table must include a user-submittable attribute — that is to say, some attribute other than its foreign keys that can be submitted by the app's user

3   TO DO ??
    Your models must include reasonable validations for the simple attributes. You don't  
    need to add every possible validation or duplicates, such as presence and a minimum length, but the models should defend against invalid data.

4   TO DO ??
    You must include at least one class level ActiveRecord scope method. a. Your scope  
    method must be chainable, meaning that you must use ActiveRecord Query methods within it (such as .where and .order) rather than native ruby methods (such as #find_all or #sort).

5   Your application must provide standard user authentication, including signup, login, 
    logout, and passwords.--- √

6   Your authentication system must also allow login from some other service. Facebook, 
    Twitter, Foursquare, Github, etc... --- √

7   TO DO
    You must include and make use of a nested resource with the appropriate RESTful URLs.
    • You must include a nested new route with form that relates to the parent resource

    • You must include a nested index or show route 

8   To DO
    Your forms should correctly display validation errors.

9   Your application must be, within reason, a DRY (Do-Not-Repeat-Yourself) rails app.--- √

10  Don't use scaffolding --- √