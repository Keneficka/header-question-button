<style>
    div#ask-button-ak {
        margin-top: -5.5px;
        margin-right: 20px;
        display: none;
    }

    @media screen and (min-width: 992px){
        div#ask-button-ak {
            display: inline-block;
        }
    }
</style>

<#if coreNode.nodeType == "board">
    <#assign sourceBoard = coreNode.id/>
    <#assign postURL = "/t5/forums/postpage/choose-node/true/board-id/" + sourceBoard + "?source=header" />
<#else>
    <#assign postURL = "/t5/forums/postpage/choose-node/true?source=header" />
</#if>

<div class="ask-button-ak" id="ask-button-ak">
    <a href="${postURL}" target="_blank" class="lia-button lia-button-primary" id=>Ask a Question</a>
</div>