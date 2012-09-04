<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
	<head>
		<tiles:insertAttribute name="imports" />
		<title><tiles:getAsString name="pageTitle" /></title>
	</head>
	<body>
		<div class="container">
			<tiles:insertAttribute name="header" />
			<tiles:insertAttribute name="menu" />
			<tiles:insertAttribute name="body" />
			<hr/>
			<tiles:insertAttribute name="footer" />
		</div>
	</body>
</html>