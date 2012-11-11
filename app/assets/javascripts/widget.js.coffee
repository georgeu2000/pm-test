$ ->
  $( "#dialog" ).dialog({ autoOpen: false });
  $( "#opener" ).click ->
    $( "#dialog" ).dialog( "open" );
    $( "#dialog" ).load('/articles');