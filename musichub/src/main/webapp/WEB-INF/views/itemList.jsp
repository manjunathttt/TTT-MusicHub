<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div class="span7 popular_products">

				 <h3>Popular products</h3><br>
				<ul class="thumbnails">
				
				
				<c:forEach items="${items}" var="item">
				<c:if test="${searchCondition != null && searchCondition == item.itemCategory}">
					<li class="span2">
				  		<div class="thumbnail">
							<a href="<spring:url value="/musicprod/showitem/${item.itemId}" />"> 
							<img alt="" src="<c:url value="/resources/images/${item.itemId}.png" /> ">
							<div class="caption">
					  		<h5>${item.itemName}</h5>  Price: ${item.itemPrice}</a><br><br>
						</div>
				  </div>
				</li>
				</c:if>
				<c:if test="${searchCondition == null }">
				<li class="span2">
				  <div class="thumbnail">
					<a href="<spring:url value="/musicprod/showitem/${item.itemId}" />"> 
					<img alt="" src="<c:url value="/resources/images/${item.itemId}.png" /> ">
					<div class="caption">
					  <h5>${item.itemName}</h5>  Price: Rs. ${item.itemPrice}</a><br><br>
					</div>
				  </div>
				</li>
				</c:if>
               </c:forEach>
				

			  </ul>
		</div>
		<%@include file="/WEB-INF/views/footer.jsp" %>