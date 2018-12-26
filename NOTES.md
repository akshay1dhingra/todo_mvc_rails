step 1: Integrate basic theme to Asset Pipeline

[x] - I want to go to the homepage ( / ) and see a stubbed out, non-dynamic, page with the theme.

step 2: Allow people to CRUD lists 

[] ListsController
    #index    
    - see all their lists
    - doubling as my #new action in that it is presenting the person
    with a form to create a new list
    / - Index all of the lists... 
        I know I need a model and a controller... so generate a Resource

- create a list
- show a list
- delete a list

I want people to be able to create lists. then they should be able to add items to that list. Should be able to navigate to many lists and see each lists items. 

lists 
    has many items

items
    belongs to a list