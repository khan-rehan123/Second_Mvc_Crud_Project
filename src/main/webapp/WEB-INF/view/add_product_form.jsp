<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page isELIgnored="false"%>
<html>
<head>
<meta charset="ISO-8859-1">

<%@ include file="base.jsp"%>

</head>
<body class="bg-skyblue">
	<div class="container mt-4">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-header">
					<h3 class="text-center">Add Product Form</h3>
					</div>
					<div class="card-body">
						
						<form action="add-product" method="post">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Enter
									Name</label> <input type="text" name="name" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="Enter Product Name">

							</div>
							
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Enter
									Product Brand</label> <input type="text" name="brand" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="Enter Product Brand">

							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Enter
									Product Category</label> <input type="text" name="category" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="Enter Product Category">

							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Enter
									Product Description</label>
								<textarea rows="5" name="description" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp"
									placeholder="Enter Product Description"></textarea>
								

							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Enter
									Product Price</label> <input type="number" name="price" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="Enter Product Price">

							</div>

						<div class="text-center">
						<a href="${pageContext.request.contextPath }/" class="btn btn-outline-danger">Back</a> 
						<button type="submit" class="btn btn-primary">Submit</button>
						
						</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>