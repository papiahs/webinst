 tinyMCE.init({
	            mode : "specific_textareas",
	            editor_selector : "mceEditor",
	            theme : "advanced",
	            convert_urls : false,
	            plugins : "emotions,preview,,fullscreen,advimage",
	            theme_advanced_buttons1 : "bold,italic,underline,separator,strikethrough,bullist,numlist,link,copy,cut,paste,charmap,image",
	            theme_advanced_buttons2 : "preview,,fullscreen",
	            theme_advanced_buttons3 : "",
	            theme_advanced_toolbar_location : "top",
	            theme_advanced_toolbar_align : "left",
	            extended_valid_elements : "a[name|href|target|title|onclick],img[class|src|border=0|alt|title|hspace|vspace|width|height|align|onmouseover|onmouseout|name],hr[class|width|size|noshade],font[face|size|color|style],span[class|align|style]", 
				external_image_list_url : "/pics.js", 
	        });