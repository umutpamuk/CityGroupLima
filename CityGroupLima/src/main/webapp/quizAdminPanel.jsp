<%@ page import="data.Login" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v3.8.5">
    <title>Quiz Admin Panel</title>

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
      <h4 class="mb-3">Quiz Admin Panel</h4>
      <form method="post" action="QuizDatabasePost" novalidate>
        <div class="row">
          <div class="col-md-6 mb-3">
            <label for="firstName">City Name</label>
            <input name="CityName" type="text" class="form-control" id="cityName" placeholder="City Name" value="" required>
          </div>
          <div class="col-md-6 mb-3">
          </div>
        </div>

        <div class="mb-3">
          <label for="Question1">Question 1</label>
          <div class="input-group">
            <textarea name="Question1" class="form-control" id="Question1" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="Image1">Image 1</label>
          <div class="input-group">
            <textarea name="Image1" class="form-control" id="Image1" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="Choice1">Choice 1</label>
          <div class="input-group">
            <textarea name="Choice11" class="form-control" id="Choice1" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="Choice2">Choice 2</label>
          <div class="input-group">
            <textarea name="Choice12" class="form-control" id="Choice2" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="Choice3">Choice 3</label>
          <div class="input-group">
            <textarea name="Choice13" class="form-control" id="Choice3" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="Choice4">Choice 4</label>
          <div class="input-group">
            <textarea name="Choice14" class="form-control" id="Choice4" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="Correct1">Correct 1</label>
          <div class="input-group">
            <textarea name="Correct1" class="form-control" id="Correct1" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="Question2">Question 2</label>
          <div class="input-group">
            <textarea name="Question2" class="form-control" id="Question2" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="Image2">Image 2</label>
          <div class="input-group">
            <textarea name="Image2" class="form-control" id="Image2" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="Choice2">Choice 2-1</label>
          <div class="input-group">
            <textarea name="Choice21" class="form-control" id="Choice2" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="Choice2">Choice 2-2</label>
          <div class="input-group">
            <textarea name="Choice22" class="form-control" id="Choice2" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="Choice3">Choice 2-3</label>
          <div class="input-group">
            <textarea name="Choice23" class="form-control" id="Choice3" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="Choice4">Choice 2-4</label>
          <div class="input-group">
            <textarea name="Choice24" class="form-control" id="Choice4" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="Correct1">Correct 2</label>
          <div class="input-group">
            <textarea name="Correct2" class="form-control" id="Correct1" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="Question1">Question 3</label>
          <div class="input-group">
            <textarea name="Question3" class="form-control" id="Question1" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="Image1">Image 3</label>
          <div class="input-group">
            <textarea name="Image3" class="form-control" id="Image1" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="Choice1">Choice 3-1</label>
          <div class="input-group">
            <textarea name="Choice31" class="form-control" id="Choice1" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="Choice2">Choice 3-2</label>
          <div class="input-group">
            <textarea name="Choice32" class="form-control" id="Choice2" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="Choice3">Choice 3-3</label>
          <div class="input-group">
            <textarea name="Choice33" class="form-control" id="Choice3" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="Choice4">Choice 3-4</label>
          <div class="input-group">
            <textarea name="Choice34" class="form-control" id="Choice4" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="Correct1">Correct 3</label>
          <div class="input-group">
            <textarea name="Correct3" class="form-control" id="Correct1" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="Question1">Question 4</label>
          <div class="input-group">
            <textarea name="Question4" class="form-control" id="Question1" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="Image1">Image 4</label>
          <div class="input-group">
            <textarea name="Image4" class="form-control" id="Image1" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="Choice1">Choice 4-1</label>
          <div class="input-group">
            <textarea name="Choice41" class="form-control" id="Choice1" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="Choice2">Choice 4-2</label>
          <div class="input-group">
            <textarea name="Choice42" class="form-control" id="Choice2" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="Choice3">Choice 4-3</label>
          <div class="input-group">
            <textarea name="Choice43" class="form-control" id="Choice3" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="Choice4">Choice 4-4</label>
          <div class="input-group">
            <textarea name="Choice44" class="form-control" id="Choice4" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="Correct1">Correct 4</label>
          <div class="input-group">
            <textarea name="Correct4" class="form-control" id="Correct1" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="Question1">Question 5</label>
          <div class="input-group">
            <textarea name="Question5" class="form-control" id="Question1" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="Image1">Image 5</label>
          <div class="input-group">
            <textarea name="Image5" class="form-control" id="Image1" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="Choice1">Choice 5-1</label>
          <div class="input-group">
            <textarea name="Choice51" class="form-control" id="Choice1" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="Choice2">Choice 5-2</label>
          <div class="input-group">
            <textarea name="Choice52" class="form-control" id="Choice2" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="Choice3">Choice 5-3</label>
          <div class="input-group">
            <textarea name="Choice53" class="form-control" id="Choice3" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="Choice4">Choice 5-4</label>
          <div class="input-group">
            <textarea name="Choice54" class="form-control" id="Choice4" rows="2"></textarea>
          </div>
        </div>
        <div class="mb-3">
          <label for="Correct1">Correct 5</label>
          <div class="input-group">
            <textarea name="Correct5" class="form-control" id="Correct1" rows="2"></textarea>
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
