<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<%@include file="./base.jsp"%>
</head>
<body class="bg-2#2#2#">
	<div class="container mt-4">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-header">
						<h3 class="text-center">Update Product Form</h3>
					</div>
					<div class="card-body">
						<form action="${pageContext.request.contextPath}/add-product" method="post">
						<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Product
									ID</label> <input type="text" class="form-control" name="id"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="Enter Product Name" value="${update.id }">

							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Product
									Name</label> <input type="text" class="form-control" name="name"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="Enter Product Name" value="${update.name }">

							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Enter Product
									Brand</label> <input type="text" class="form-control" name="brand"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="Enter Product Name" value="${update.brand }">

							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Enter Product
									Category</label> <input type="text" class="form-control" name="category"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="Enter Product Name" value="${update.category }">

							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Product
									Description</label>
								<textarea rows="5" class="form-control" name="description"
									placeholder="Enter Product Description">${update.description }
									</textarea>
																	

							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Product
									Price</label> <input type="text" class="form-control" name="price"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="Enter Product Price" value="${update.price }">

							</div>

							<div class="text-center">
								<a href="${pageContext.request.contextPath }/" class="btn btn-outline-danger">Back</a>
								<button type="submit" class="btn btn-outline-success">Update</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>