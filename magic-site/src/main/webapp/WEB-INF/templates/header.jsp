<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<div class="navbar">
	<div class="navbar-inner">
		<a href="#" class="brand">Mana Leak</a>
		<ul class="nav">
			<li><a href="#">Home</a></li>
			<li><a href="#">Search</a></li>
		</ul>
		<a class="pull-right" href="<c:url value="/cart" />"><i class="icon-shopping-cart icon-white"></i> Cart <c:if test="${not empty cart}"><c:out value="${fn:length(cart)}"/></c:if></a>
	</div>
</div>