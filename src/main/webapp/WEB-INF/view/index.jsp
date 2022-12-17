<html>
<head>
<%@ include file="base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
 <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
</head>
<body class="bg-image: url('IMG_4816.JPG');">

	<div class="container mt-4">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center mb-3">Welcome to Product List</h1>

				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Name</th>
							<th scope="col">Brand</th>
							<th scope="col">Category</th>
							<th scope="col">Description</th>
							<th scope="col">Price</th>
							<th scope="col">Option</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${ product}" var="p">
						<tr>
							<th scope="row">TECHONLY ${p.id }</th>
							<td>${p.name }</td>
							<td>${p.brand }</td>
							<td>${p.category }</td>
							<td>${p.description }</td>
							<td class="font-wieght-bold">&#x20b9; ${p.price }</td>
							<td>
							<a href="delete/${p.id }" class="fa fa-trash course-pointer"  style='font-size:30px;color:red'></a>
							<a href="update/${p.id }" class="fas fa-edit course-pointer" style='font-size:30px'></a>
							</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
					<div class="container text-center">
					<a href="add-product" class="btn btn-outline-success">Add Product</a>
					</div>
			</div>
		</div>
	</div>
	</div>
</body>
</html>
