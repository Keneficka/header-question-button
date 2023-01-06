<#import "common-functions.ftl" as commonFunctionUtility/>
<div class="common-header">
	<div class="left-content">
		<div class="logo-container">
			<@component id="common.widget.slide-out-nav-menu"/>
			<a class="logo" href="/"><img src="/html/assets/ptc_community-KO.png"></a>
		</div>
	</div>
	<div class="right-content">
		<button class="search-content-mobile-trigger"></button>
        <@component id="custom.question-button"/>
		<div class="login">
            <@component id="custom.header-search-icon"/>
			<#if user.registered>
				<@component id="custom.bookmark-icon"/>
				<@component id="notificationfeed.widget.indicator"/>
				<@component id="notes.widget.summary-modern"/>
				<@component id="users.widget.menu"/>				
			<#else>
				<a class="anonymous" href='${webUi.getUserLoginPageUrl(http.request.url)}'>${text.format("general.Log.in")}</a>
			</#if>
		</div>
	</div>
	<div class="search-content search-content-mobile">
		<@component id="common.widget.search-form" defaultToCommunity="false" useClearSearchButton="true" showAdvancedSearchLink="false" hideGranularity="true"/>
	</div>
	
    <@component id="custom.header-search"/>
</div>
<#if user.registered>
	<@component id="custom.bookmark-bar"/>
</#if>