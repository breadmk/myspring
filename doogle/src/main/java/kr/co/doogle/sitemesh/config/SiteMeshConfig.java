package kr.co.doogle.sitemesh.config;

import org.sitemesh.builder.SiteMeshFilterBuilder;
import org.sitemesh.config.ConfigurableSiteMeshFilter;

public class SiteMeshConfig extends ConfigurableSiteMeshFilter {

	@Override
	protected void applyCustomConfiguration(SiteMeshFilterBuilder builder) {
		builder.addDecoratorPath("/jusoPopup", null)
		.addDecoratorPath("/admin*", "/WEB-INF/back/layout/adminLayout.jsp")
		.addDecoratorPath("/shop*", "/WEB-INF/front/layout/shopLayout.jsp")
		.addDecoratorPath("/*", "/WEB-INF/front/layout/mainLayout.jsp")
//		.addExcludedPath("/html/*")
//		.addExcludedPath(".json")
		.addDecoratorPath("/delivery_pop", null)
		.addDecoratorPath("/deliveryUpdate", null)
		.addDecoratorPath("/shop/qnaOrderList", null)
		.addDecoratorPath("/shop/alarmApply", null)
		.setMimeTypes("text/html");
		
	}

}