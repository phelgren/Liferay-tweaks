package org.bsfinternational.test.process;

import java.io.IOException;
import java.io.PrintWriter;

import javax.portlet.PortletException;
import javax.portlet.ResourceRequest;
import javax.portlet.ResourceResponse;

import org.osgi.service.component.annotations.Component;

import com.liferay.portal.kernel.portlet.bridges.mvc.MVCResourceCommand;


@Component(
		immediate = true,
		property = {
		    "javax.portlet.name=Test",
	        "mvc.command.name=test-process"
	    },
	    service = MVCResourceCommand.class
	)

public class ProcessTest implements MVCResourceCommand {

	@Override
	public boolean serveResource(ResourceRequest resourceRequest, ResourceResponse resourceResponse)
			throws PortletException {
		// TODO Auto-generated method stub
		
		resourceResponse.setContentType("text/plain");
		
		PrintWriter out =null;
		try {
			out = resourceResponse.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		out.print("98765");
		out.flush();
		
		return false;
	}

}
