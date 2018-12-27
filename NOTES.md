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

CREATE ACTION for an ITEM in a LIST - what is the URL / HTTP method for that?

POST /lists/:id/items #=> Doesn't describe which list we are adding an item too? 

An item doesnt exist in our application outside of the context of the list it belongs to

Nested Resource - Items are nested in terms of URLs under their parent list

- show a list
- delete a list

I want people to be able to create lists. then they should be able to add items to that list. Should be able to navigate to many lists and see each lists items. 

lists 
    has many items

items
    belongs to a list

[x] Step 3: Add items to a list

[x] Step 4: Adding validations
    validates that lists have names
    validates that items have a description

Step 5: I want to add state (complete, incomplete) to Items in a list
    - Marking items as complete or incomplete 
    
Step 6: Deleting items from a list
