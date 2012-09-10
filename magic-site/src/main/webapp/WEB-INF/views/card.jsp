<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="row">
	<div class="span5 card-placeholder"></div>
	<div class="span7">
		<table class="detail">
			<tbody>
				<tr>
					<td>Name:</td><td>${item.name}</td>
				</tr>
				<tr>
					<td>Cost:</td><td>${item.manaCost}</td>
				</tr>
				<tr>
					<td>Type:</td><td>${item.cardType.name}</td>
				</tr>
				<tr>
					<td>Description:</td><td>${item.description}</td>
				</tr>
				<tr>
					<td>Rating</td>
				</tr>
				<tr>
					<td>
						
						<div class="rating-wrapper well well-small">
							<div class="rating-stars"><i class="icon-star-empty icon-white"></i><i class="icon-star-empty icon-white"></i><i class="icon-star-empty icon-white"></i><i class="icon-star-empty icon-white"></i><i class="icon-star-empty icon-white"></i></div>
							<div class="rating-stars">
								<div class="filled-wrapper" style="width: <c:url value="${rating}" />px">
									<div class="rating-stars"><i class="icon-star icon-white"></i><i class="icon-star icon-white"></i><i class="icon-star icon-white"></i><i class="icon-star icon-white"></i><i class="icon-star icon-white"></i></div>
								</div>
							</div>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>