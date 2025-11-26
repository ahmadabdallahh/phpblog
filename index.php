<?php
require_once("./config/database.php");
include("./includes/header.php");
?>

<div class="container" style="min-height: 100vh;">
    <div class="text-center mt-4">
        <h1 class="">Welcome To My Blog </h1>
        <p class="text-muted">Discover The Latest Articles And News</p>
    </div>

    <div class="row mt-4">

        <?php
        // INFO: loop Through The Cards
        for ($i = 0; $i < 9; $i++) {
        ?>

            <div class="col-12 col-sm-6 col-lg-4 mb-4 text-center">
                <div class="card h-100">
                    <div class="card-body">
                        <h5 class="card-title">Post Title</h5>
                        <h6 class="card-subtitle mb-2 text-body-secondary">Card subtitle</h6>
                        <a href="#" class="btn btn-outline-primary">Read More</a>
                    </div>
                </div>
            </div>

        <?php } ?>
    </div>
</div>

<?php include("./includes/footer.php") ?>
