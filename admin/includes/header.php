<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?= isset($pageTitle) ? $pageTitle : "Admin Dashboard"; ?></title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">

</head>

<body>
    <nav class="navbar bg-dark navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="#">
                <h3 class="fw-bold"><i class="bi bi-speedometer2"></i> Admin Dashboard </h3>
            </a>

            <a href="#" class="btn btn-outline-light fs-5"><i class="bi bi-box-arrow-right"></i> Logout</a>
        </div>
    </nav>
