<#if http.request.parameters.name.get("source", "") == "header">
    <style>
        #lia-body .lia-button-wrapper-Submit-action {
            margin-bottom: 5px;
            margin-left: 15px;
            margin-top: 5px;
            padding:0;
        }

        #board-select-error-ak {
            color: #a94442;
            margin-top: 5px;
            font-weight: bold;
            font-size: 16px;
        }

        a#select-button-error-ak {
            outline: 2px solid #a94442;
        }
    </style>

    <@liaAddScript>
        ;(function($) {

            var postBtnSpan = document.querySelector('.lia-button-wrapper-Submit-action');

            postBtnSpan.addEventListener('click', function() {
                gtag('event', 'header_button_post');
	        }, false);

        })(LITHIUM.jQuery);
    </@liaAddScript>

    <@liaAddScript>
        ;(function($) {

            var error = document.querySelector('#informationbox_0');

            if (error) {
                var path = location.pathname;
                if (!(path.includes('board-id'))) {
                    var boardSelector = document.querySelector('.lia-form-row.lia-form-custom-board-selector-entry');

                    var errorMessage = document.createElement('p');
                    errorMessage.id = "board-select-error-ak";
                    errorMessage.innerHTML = "***Please select a location***";

                    boardSelector.appendChild(errorMessage)

                    var selectorButton = document.querySelector('.custom-select-board-button');
                    selectorButton.id = "select-button-error-ak";
                }
            }

        })(LITHIUM.jQuery);
    </@liaAddScript>
</#if>