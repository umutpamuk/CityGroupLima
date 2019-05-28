<%@ page import="data.Login" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v3.8.5">
    <title>Admin Panel</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.3/examples/checkout/">

    <!-- Bootstrap core CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
   </style>
    <!-- Custom styles for this template -->
    <link href="form-validation.css" rel="stylesheet">
  </head>
  <body class="bg-light">
    <div class="container">
  <div class="row">
    <div class="col-md-12 order-md-1">
      <h4 class="mb-3">Admin Panel</h4>
      <form method="post" action="DatabasePost" novalidate>
        <div class="row">
          <div class="col-md-6 mb-3">
            <label for="firstName">City Name</label>
            <input name="CityName" type="text" class="form-control" id="cityName" placeholder="City Name" value="" required>
          </div>
          <div class="col-md-6 mb-3">
          </div>
        </div>

        <div class="mb-3">
          <label for="Carusel1">Carusel 1</label>
          <div class="input-group">
            <textarea name="Carusel1" class="form-control" id="carusel1" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="Carusel1">Carusel 1 Alt</label>
          <div class="input-group">
            <textarea name="Carusel1Alt" class="form-control" id="carusel1Alt" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="Carusel1">Carusel 1 Background Image</label>
          <div class="input-group">
            <textarea name="Carusel1Back" class="form-control" id="carusel1BAck" rows="2"></textarea>
          </div>
        </div>
        
        <div class="mb-3">
          <label for="Carusel2">Carusel 2</label>
          <div class="input-group">
            <textarea name="Carusel2" class="form-control" id="carusel2" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="Carusel2">Carusel 2 Alt</label>
          <div class="input-group">
            <textarea name="Carusel2Alt" class="form-control" id="carusel2Alt" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="Carusel2">Carusel 2 Background Image</label>
          <div class="input-group">
            <textarea name="Carusel2Back" class="form-control" id="carusel2BAck" rows="2"></textarea>
          </div>
        </div>
        
        <div class="mb-3">
          <label for="Carusel3">Carusel 3</label>
          <div class="input-group">
            <textarea name="Carusel3" class="form-control" id="carusel3" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="Carusel3">Carusel 3 Alt</label>
          <div class="input-group">
            <textarea name="Carusel3Alt" class="form-control" id="carusel3Alt" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="Carusel3">Carusel 3 Background Image</label>
          <div class="input-group">
            <textarea name="Carusel3Back" class="form-control" id="carusel3BAck" rows="2"></textarea>
          </div>
        </div>
        
		<div class="mb-3">
          <label for="info">Info</label>
          <div class="input-group">
            <textarea name="Info" class="form-control" id="info" rows="2"></textarea>
          </div>
        </div>
		<div class="mb-3">
          <label for="info1">Info 1</label>
          <div class="input-group">
            <textarea name="Info1" class="form-control" id="info1" rows="2"></textarea>
          </div>
        </div> 
        <div class="mb-3">
          <label for="info1Right">Info 1 Right</label>
          <div class="input-group">
            <textarea name="Info1Right" class="form-control" id="Info1Right" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="info2">Info 2</label>
          <div class="input-group">
            <textarea name="Info2" class="form-control" id="Info2" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="info2Left">Info 2 Left</label>
          <div class="input-group">
            <textarea name="Info2Left" class="form-control" id="Info2Left" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="info3">Info 3</label>
          <div class="input-group">
            <textarea name="Info3" class="form-control" id="Info3" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="Img1">Image 1</label>
          <div class="input-group">
            <textarea name="Img1" class="form-control" id="Img1" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="Img2">Image 2</label>
          <div class="input-group">
            <textarea name="Img2" class="form-control" id="Img2" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="Img3">Image 3</label>
          <div class="input-group">
            <textarea name="Img3" class="form-control" id="Img3" rows="2"></textarea>
          </div>
        </div> 
        <div class="mb-3">
          <label for="Img4">Image 4</label>
          <div class="input-group">
            <textarea name="Img4" class="form-control" id="Img4" rows="2"></textarea>
          </div>
        </div> 
        <div class="mb-3">
          <label for="Img5">Image 5</label>
          <div class="input-group">
            <textarea name="Img5" class="form-control" id="Img5" rows="2"></textarea>
          </div>
        </div>
       <div class="mb-3">
          <label for="Img6">Image 6</label>
          <div class="input-group">
            <textarea name="Img6" class="form-control" id="Img6" rows="2"></textarea>
          </div>
        </div> 
        <div class="mb-3">
          <label for="Img7">Image 7</label>
          <div class="input-group">
            <textarea name="Img7" class="form-control" id="Img7" rows="2"></textarea>
          </div>
        </div> 
        <div class="mb-3">
          <label for="Img8">Image 8</label>
          <div class="input-group">
            <textarea name="Img8" class="form-control" id="Img8" rows="2"></textarea>
          </div>
        </div>
		<div class="mb-3">
			<div class="input-group">
				<input type="submit" value="Submit"  class="orange-btn"/>         
          	</div>
        </div>
                                                         
        
        </form>
    </div>
  </div>

  <footer class="my-5 pt-5 text-muted text-center text-small">
    <p class="mb-1">&copy; 2019 - 2020 Group By Lima</p>
  </footer>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="/docs/4.3/assets/js/vendor/jquery-slim.min.js"><\/script>')</script><script src="/docs/4.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-xrRywqdh3PHs8keKZN+8zzc5TX0GRTLCcmivcbNJWm2rs5C8PRhcEn3czEjhAO9o" crossorigin="anonymous"></script>
        <script src="form-validation.js"></script></body>
</html>
