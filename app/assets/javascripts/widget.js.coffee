$ ->
  $( "#dialog" ).dialog({ autoOpen: false, width: '400px' });
  $( "#opener" ).click ->
    $( "#dialog" ).dialog( "open" );
    $( "#dialog" ).load('/articles');