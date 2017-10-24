package org.bsfinternational.profile.portlet;

import org.bsfinternational.profile.constants.ProfileBarPortletKeys;
import org.osgi.service.component.annotations.Component;

import com.liferay.admin.kernel.util.PortalUserPersonalBarApplicationType;

import com.liferay.portal.kernel.portlet.BasePortletProvider;
import com.liferay.portal.kernel.portlet.ViewPortletProvider;

@Component(
		immediate = true,
		property = {
			"model.class.name=" + PortalUserPersonalBarApplicationType.UserPersonalBar.CLASS_NAME,
			"service.ranking:Integer=10"
		},
		service = ViewPortletProvider.class
	)

public class ProfileBarPortletViewPortletProvider 
extends BasePortletProvider implements ViewPortletProvider{
	
	@Override
	public String getPortletName() {
		return ProfileBarPortletKeys.ProfileBar;
	}
	
}
