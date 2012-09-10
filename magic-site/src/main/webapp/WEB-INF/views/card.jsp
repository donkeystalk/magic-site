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
								<div class="filled-wrapper">
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

<script type="text/javascript">
	$(document).ready(function(){
		/* There are 5 stars on the rating screen each with 14px in width 5*14 = 70
		 * Multiply this by the percentage from the (score / num votes) / 5 (i.e. 1 vote of 5 stars = 5 / 1 = 5 / 5 = 1.0 * 70 = 70px, 
		 * or show all 5 stars.
		 */
		var star_width = 14;
		var score = ${item.score};
		var numVotes = ${item.numVotes};
		if(numVotes == 0)
		{
			$('.filled-wrapper').width(0);
			return;
		}
		var fill_width = ((score / numVotes) / 5) * (star_width * 5);
		$('.filled-wrapper').width(fill_width);
	});
</script>