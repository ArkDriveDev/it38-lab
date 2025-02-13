<?php
?>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<title>Page Title</title>
<style>
    .flex-container {
      display: flex;
      flex-wrap: nowrap;
      background-color: DodgerBlue;
    }
   
    .flex-container > div {
      background-color: #f1f1f1;
      width: 100px;
      margin: 10px;
      text-align: center;
      line-height: 75px;
      font-size: 30px;
    }
    </style>
</head>
<body>
    <!--Navbar-->
    <nav class="navbar" style="background-color: rgba(1, 1, 49, 0.938);">
        <div class="container-fluid">
          <a class="navbar-brand text-white"href="#">Dashboard</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active text-white" aria-current="page" href="#">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link text-white" href="#">Link</a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  Dropdown
                </a>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="#">Action</a></li>
                  <li><a class="dropdown-item" href="#">Another action</a></li>
                  <li><hr class="dropdown-divider"></li>
                  <li><a class="dropdown-item" href="../logout.php">logout</a></li>
                </ul>
              </li>
            </ul>
            <form class="d-flex" role="search">
              <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
          </div>
        </div>
      </nav>
      <!--Flex Container-->
      <div class="flex-container">
      <!--Card1-->
      <div class="card" style="width: 18rem;height:10rem; background-color: rgb(255, 0, 0);">
        <div class="card-body">
          <h1>Admin Users</h1>
          <h2>24</h2>
        </div>
      </div>

      <!--Card2-->
      <div class="card" style="width: 18rem;height:10rem; background-color: aqua;">
        <div class="card-body">
          <h1>Student Users</h1>
          <h2>24</h2>
        </div>
      </div>
      <!--Card3-->
      <div class="card" style="width: 18rem;height:10rem; background-color: rgb(229, 255, 0);">
        <div class="card-body">
          <h1>Instructor Users</h1>
          <h2>24</h2>
        </div>
      </div>
       <!--Card4-->
       <div class="card" style="width: 18rem;height:10rem; background-color: rgb(0, 255, 42);">
        <div class="card-body">
          <h1>Total Users</h1>
          <h2>24</h2>
        </div>
      </div>
      </div>


</body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</html>