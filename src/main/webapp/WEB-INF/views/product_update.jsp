<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">
  <head>
    <title>Update Page</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  </head>
  <body>
      <div class="d-flex flex-column align-items-center">
      <h1 class="text-primary text-center mb-4 mt-4">Update product</h1>
      <form class="d-flex flex-column text-primary w-50" action="" method="post">
        <div class="form-group">
          <label class="font-weight-bold" for="code ">Id</label>
          <input
            type="text"
            class="form-control"
            name="id"
            id="id"
            aria-describedby="helpId"
            value="${product.id }"
            readonly
          />
        </div>
        <div class="form-group">
          <label class="font-weight-bold" for="name">Name</label>
          <input
            type="text"
            class="form-control"
            name="name"
            id="name"
            aria-describedby="helpId"
            value="${product.name }"
          />
        </div>
        <div class="form-group">
          <label class="font-weight-bold" for="email">Quantity</label>
          <input
            type="text"
            class="form-control"
            name="quantity"
            id="quantity"
            aria-describedby="helpId"
            value="${product.quantity}"
          />
        </div>
        <div class="form-group">
          <label class="font-weight-bold" for="address">Price</label>
          <input
            type="text"
            class="form-control"
            name="price"	
            id="price"
            aria-describedby="helpId"
            value="${product.price}"
          />
        </div>
        <button type="submit" class="btn btn-primary">Update</button>
      </form>
    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>