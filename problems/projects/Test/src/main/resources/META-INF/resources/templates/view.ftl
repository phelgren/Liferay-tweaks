<#include "init.ftl">

<@liferay_ui["message"] key="Test.caption" />

<!DOCTYPE html>

<html>
  <head>
  <@portlet.resourceURL var="glqURL" id="test-process"/>
  
     <title>Test portlet</title>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <script>
	var glqURL = "${glqURL}";

    $(document).ready(function(){

	    var class_id = 0;
		    $.ajax({
		    	async:false,
		    	cache: false,
				url: glqURL,
				data: {ajaxrequest: 'getMyClass'},
				dataType: 'text',
			   	success: function(data) {
	
			   		class_id = data;
			   	}
		    
		    });
	
	    
	    if(class_id != 'undefined' && class_id != null && class_id != '' 
	    	&& class_id != '0')
	    	{
				document.getElementById("classnumber").innerHTML = class_id;
	    	}
	

    });
    
    </script>
    
  </head>

  <body>
  
  The class is: <div id=classnumber></div>
  
  </body>
  </html>
