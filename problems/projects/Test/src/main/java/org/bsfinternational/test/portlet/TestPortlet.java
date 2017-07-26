package org.bsfinternational.test.portlet;

import org.bsfinternational.test.constants.TestPortletKeys;

import com.liferay.util.bridges.freemarker.FreeMarkerPortlet;

import javax.portlet.Portlet;

import org.osgi.service.component.annotations.Component;

/**
 * @author Pete
 */
@Component(
	immediate = true,
	property = {
		"com.liferay.portlet.css-class-wrapper=portlet-freemarker",
		"com.liferay.portlet.display-category=category.sample",
		"com.liferay.portlet.header-portlet-css=/css/main.css",
		"com.liferay.portlet.instanceable=true",
		//"javax.portlet.name=org_bsfinternational_test_portlet_TestPortlet",
		"javax.portlet.display-name=Test Portlet",
		"javax.portlet.init-param.template-path=/",
		"javax.portlet.init-param.view-template=/templates/view.ftl",
		"javax.portlet.name=" + TestPortletKeys.Test,
		"javax.portlet.resource-bundle=content.Language",
		"javax.portlet.security-role-ref=power-user,user"
	},
	service = Portlet.class
)
public class TestPortlet extends FreeMarkerPortlet {
}
