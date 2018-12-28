What urls do I need and how might my database change?

- The idea of an item being complete or incomplete require data.

- new forms for updating the status of an item - which means new URL

/lists/1/items
    PUT/PATCH /lists/1/items/1
    PUT/PATCH /lists/:lists_id/items/:id 

I know I need to steal that checkbox HTML from todomvc

Add this to the view
<input  class="toggle> type="checkbox">

I need that JS function to submit the form when you click the checkbox

$(function(){
    $("input.toggle").on("change", function()){
        $(this).parents("form").trigger("submit")
    })
})