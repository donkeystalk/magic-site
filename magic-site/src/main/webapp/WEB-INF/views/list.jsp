<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:forEach items="${items}" var="item">
	<a href="<c:url value="/card/detail/${item.id}" />">${item.name}</a> - ${item.description}
</c:forEach>