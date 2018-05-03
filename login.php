<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">

    <title>Login</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/floating-labels.css" rel="stylesheet">
  </head>

  <body>
    <form class="form-signin" action="login-ch.php" method="post" >
      <div class="text-center mb-4">
        <img class="mb-4" src="https://getbootstrap.com/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
        <h1 class="h3 mb-3 font-weight-normal">Admin Login</h1>
      </div>

      <div class="form-label-group">
        <input type="text" id="user" class="form-control" name="user" placeholder="Email address" required autofocus>
        <label for="inputEmail">User</label>
      </div>

      <div class="form-label-group">
        <input type="password" id="inputPassword" class="form-control" name="password" placeholder="Password" required>
        <label for="inputPassword">Password</label>
      </div>

      <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
    </form>
  </body>
</html>
