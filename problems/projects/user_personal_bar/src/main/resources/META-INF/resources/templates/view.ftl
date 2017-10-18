<#include "init.ftl">

<@liferay_ui["message"] key="Profile-bar.caption" />

<#if themeDisplay.isSignedIn() >

		<span class="user-avatar-link">
			<a class="text-default" data-qa-id="openUserMenu" href="javascript:;" id="<portlet:namespace />sidenavUserToggle">
				<#if themeDisplay.isImpersonated()>
					<aui:icon image="asterisk" markupView="lexicon" />
				</#if>

				<span class="user-avatar-image">
					<liferay-ui:user-portrait
						imageCssClass="user-icon-lg"
						user="${user}"
					/>
				</span>
				<span class="user-full-name">
				<#assign full_name = HtmlUtil.escape(user.getFullName()) />
					${full_name}
				</span>
			</a>

			
			<#assign  notificationsCount = GetterUtil.getInteger(request.getAttribute(ProductNavigationUserPersonalBarWebKeys.NOTIFICATIONS_COUNT)) />
			

			<#if notificationsCount > 0 >

				<#assign notificationsURL = PortletProviderUtil.getPortletURL(request, UserNotificationEvent.class.getName(), PortletProvider.Action.VIEW) />
	
				<#if notificationsURL?has_content>
					<#assign noteURL = notificationsURL.toString()>
				<#else>
					<#assign noteURL = "">
				</#if>
				
				<aui:a href=${noteURL}">
					<span class="panel-notifications-count sticker sticker-right sticker-rounded sticker-sm sticker-warning">${noteURL}</span>
				</aui:a>
			</#if>
			
		</span>
	<#else>
		<#assign isLoginRedirectRequired = PortalUtil.isLoginRedirectRequired(request) />
		<#assign anchorData = {"redirect", $isLoginRedirectRequired } />
		

		<span class="sign-in text-default" role="presentation">
			<aui:a cssClass="sign-in text-default" data=${achorData} href="${themeDisplay.getURLSignIn()}" iconCssClass="icon-user" label="sign-in" />
		</span>
</#if>
