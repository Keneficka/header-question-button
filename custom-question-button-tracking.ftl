<#if http.request.parameters.name.get("source", "") == "header">
    <style>
        #lia-body .lia-button-wrapper-Submit-action {
            margin-bottom: 5px;
            margin-left: 15px;
            margin-top: 5px;
            padding:0;
        }
    </style>

    <@liaAddScript>
        ;(function($) {

            var postBtnSpan = document.querySelector('.lia-button-wrapper-Submit-action');

            tinymce.on('addeditor', function(e) {
		        ed = e.editor;
	        })

            postBtnSpan.addEventListener('click', function() {
                var userContent = ed.getContent();
                var newContent = userContent + '<div data-tracking-ak="headerbuttontrackingcode" style="display: none;"></div>';
                ed.setContent(newContent);
	        }, false);

        })(LITHIUM.jQuery);
    </@liaAddScript>
</#if>