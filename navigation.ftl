<nav class="${nav_css_class} navbar site-navigation" id="navigation" role="navigation">
	<div class="navbar-inner">
		<div class="collapse nav-collapse">
		<ul role="menubar" class="nav nav-collapse">
			<#list nav_items as nav_item>
				<#assign nav_item_attr_has_popup = "" />
				<#assign nav_item_attr_selected = "" />
				<#assign nav_item_css_class = "" />
	
				<#if nav_item.isSelected()>
				
					<#assign nav_item_attr_selected = "aria-selected='true'" />
					<#assign nav_item_css_class = "selected active" />
				</#if>
				
				<#if nav_item.hasChildren()>
						<#assign nav_item_attr_has_popup="aria-haspopup='true'"/>
						<#assign nav_item_caret='<span class="lfr-nav-child-toggle"><i class="icon-caret-down"></i></span>'/>
						<#assign nav_item_css_class="$nav_item_css_class dropdown"/>
						<#assign nav_item_link_css_class="dropdown-toggle"/>
				</#if>
				
				<li ${nav_item_attr_selected} class="${nav_item_css_class}" id="layout_${nav_item.getLayoutId()}" role="presentation">
					<a ${nav_item_attr_has_popup} href="${nav_item.getURL()}" ${nav_item.getTarget()} class="${nav_item_link_css_class}" role="menuitem">
						<span>${nav_item.icon()} ${nav_item.getName()} ${nav_item_caret} </span>
					</a>
	
					<#if nav_item.hasChildren()>
						<ul class="dropdown-menu child-menu" role="menu">
							<#list nav_item.getChildren() as nav_child>
								<#assign nav_child_attr_selected = "" />
								<#assign nav_child_css_class = "lfr-nav-item" />
	
								<#if nav_child.isSelected()>
									<#assign nav_child_attr_selected = "aria-selected='true'" />
									<#assign nav_child_css_class = "selected" />
								</#if>
	
								<li ${nav_child_attr_selected} class="${nav_child_css_class}" id="layout_${nav_child.getLayoutId()}" role="presentation">
									<a href="${nav_child.getURL()}" ${nav_child.getTarget()} role="menuitem">${nav_child.getName()}</a>
								</li>
							</#list>
						</ul>
					</#if>
				</li>
			</#list>
		</ul>
		</div>
	</div>
</nav>
<script>
	Liferay.Data.NAV_LIST_SELECTOR = '.navbar-inner .nav-collapse > ul';
</script>
