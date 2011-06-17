class window.Helper
  update: (id) ->
    $.ajax(
      url:"/posts/#{id}"
      type: "PUT"
      dataType: 'json'
      data: {"post":{"title":"aaa","content":"bbbbb","created_at":"2011-06-17T01:54:56Z","updated_at":"2011-06-17T02:58:31Z"}}
      success: () ->
        alert "success handler called!"
      error: (jqXHR, textStatus, errorThrown) ->
        alert "error handler called! error thrown: #{errorThrown}"
    )
  
  
$(document).ready( () ->
  h = new window.Helper()
  
  $(".ajax-update").click ->
    id = $(this).data().id
    
    console.log("calling update on model with id #{id}")
    h.update(id)
    
    return false
)

