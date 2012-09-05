<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:forEach items="${cart}" var="item">
	${item.name} - ${item.description}<br />
</c:forEach>