<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="Utils.UrlUtils" %>
<!doctype html>
<html lang="en">
  <head>
    <title>PRODUCT PAGE</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  </head>
  <body class="container-fluid">
      <h1 class="text-primary m-2">Quản Lý Sản Phẩm</h1>
      <form class="d-flex flex-column text-primary w-50" action="" method="post">
      <div class="form-group">
          <label class="font-weight-bold" for="code">Id</label>
          <input
            type="text"
            class="form-control"
            name="id"
            id="id"
            aria-describedby="helpId"
            placeholder=""
          />
        </div>
        <div class="form-group">
          <label class="font-weight-bold" for="code">Tên sản phẩm</label>
          <input
            type="text"
            class="form-control"
            name="name"
            id="name"
            aria-describedby="helpId"
            placeholder=""
          />
        </div>
        <div class="form-group">
          <label class="font-weight-bold" for="code">Số Lượng:</label>
          <input
            type="text"
            class="form-control"
            name="quantity"
            id="quantity"
            aria-describedby="helpId"
            placeholder=""
          />
        </div>
        <div class="form-group">
          <label class="font-weight-bold" for="code">Giá bán:</label>
          <input
            type="text"
            class="form-control"
            name="price"
            id="price"
            aria-describedby="helpId"
            placeholder=""
          />
        </div>
        <button type="submit" class="btn btn-primary">Lưu lại</button> <br> <br>
        </form>
        <table class="table table-bordered">
        	<thead class="text-primary">
        		<tr>
        			<th>ID</th>
                	<th>Tên Sản Phẩm</th>
                	<th>Số Lượng</th>
                	<th>Giá bán</th>
                	<th>Setting</th>
        		</tr>
        	</thead>
        	<tbody>
        		<c:forEach var="products" varStatus="loopStatus" items="${products }">
        			<tr>
        				<td>${products.id}</td>
						<td>${products.name}</td>
						<td>${products.quantity}</td>
						<td>${products.price}</td>
						<td>
							<a href="<%=request.getContextPath() + UrlUtils.PRODUCT_DELETE %>?id=${products.id}"
								class="btn btn-sm btn-outline-danger text-danger">
									<i class="fa fa-trash" aria-hidden="true"> DELETE</i>
							</a>
							<a href="<%=request.getContextPath() + UrlUtils.PRODUCT_UPDATE %>?id=${products.id} "
					 			class="btn btn-sm btn-outline-success success">
									<i class="fa fa-wrench" aria-hidden="true"> UPDATE</i>
							</a>
						</td>
        			</tr>
        		</c:forEach>
        	</tbody>
        </table>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>