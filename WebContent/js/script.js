function getSuggestionCode(value){
	switch(value){
		case 'ifElse':
			return "{ \nint a; \n bool b; \n a = 1; \n\n if(a == 1) { \n    b = true; \n } else { \n    b = false; \n  }\n}";
		case 'switchCase':
			return "{ \nint a; \n bool b; \n a = 1; \n\n switch(a == 1) \n   case 1: \n      b = true; \n}";
		case 'for':
			return "{ \n int a; \n int b; \n\nfor(b = 0; b < 2; b = b + 1;){ \n if(b == 1){ \n" +
				 	"    a = b; \n  }else{ \n" +
				 	"    a = b + 1; " +
				 	"\n  } \n }\n}";
		case 'while':
			return "{ \n int n; \n n = 2; \n\n while(n > 0) { \n    n = n - 1; \n  } \n}";
		case 'do':
			return "{ \n int n; \n int a; \n n = 2; \n\n do{ \n   a = n; \n   n = n - 1; \n } \n while(n < 0); \n}";
		default:
			"{int a; a = 'Hello World!' }";
	}
}

$(function(){
	
	$('#txtCodigo').val("{  \n Start to code... \n}")
	$(".lined").linedtextarea(
		{selectedLine: 1}
	);
	
	$('.btn-suggestion').click(function(e){
		var value = $(this).data("suggestion");
		console.log(value);
		
		$('#txtCodigo').val(getSuggestionCode(value));
	});
	
	$('.btn-clean').click(function(e){
		$('#txtCodigo').val('Start to code...');
	});

	$('.btn-go').on('click', function(){
		var btnGo = $(this);
		var codigo = $('#txtCodigo').val();
		
		var dataToBeSent = {
				codigo: codigo,
				command: btnGo.val()
			};
	
	  $.ajax({
        url: 'controller.do', // Your Servlet mapping or JSP(not suggested)
        data: dataToBeSent, 
        type: 'POST',
        dataType: 'json', // Returns HTML as plain text; included script tags are evaluated when inserted in the DOM.
        success: function(response) {
        	console.log(response); 
        	
        	var feedback = response[0][0].split('_ ');
        	
        	if(feedback[0] == "error"){
        		$("#successModal").modal('hide');
        		$("#errorModal").modal({ show: true });
        	}else if(feedback[0] == "success"){        		
        		$("#errorModal").modal('hide');
        		$("#successModal").modal({ show: true });
        	}
        	
            $('.feedback').text(feedback[1]);
            
            var lexAnalyser = response[1];
            var tokensTable = $(".tokens");
            tokensTable.empty();
            
            for(var i = 0; i < lexAnalyser.length; i++){
            	tokensTable.append( "<p class='token'>"+lexAnalyser[i]+"</p>" );
            }
            
            generateTree(lexAnalyser);
        },
        error : function(request, textStatus, errorThrown) {
        	$("#successModal").modal('hide');
    		$("#errorModal").modal({ show: true });
    		$('.feedback').text(errorThrown);            
        }
	  });
	});
	
	function generateTree(list) {
		console.log('list', list);

		list = list.filter( function(elem) {
			return	elem != ';' &&  elem != "{" && elem != "}" &&  elem != '(' &&  elem != ')' && /\S/.test(elem);			
		});		
		
		console.log('list_edited', list);
	}
});