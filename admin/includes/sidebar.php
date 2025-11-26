<div class="col-12  col-md-4 col-lg-3 sidebar   bg-white border-end min-vh-100">
    <div class="position-sticky pt-4" style="top: 0;">


        <ul class="nav flex-column fs-5">
            <li class="nav-item mb-2">
                <a class='nav-link <?php echo $pageTitle == "dashboard" ? " ms-3 text-primary" : "text-muted" ?>'
                    aria-current="page" href="<?php echo $pageTitle == "dashboard" ? "#" : "./index.php"; ?>">
                    <i class=" bi bi-house-door-fill me-2"></i> Dashboard
                </a>
            </li>
            <li class="nav-item mb-2">
                <a class="nav-link  <?php echo $pageTitle == "posts" ? "ms-3 text-primary" : "text-muted" ?> "
                    href="./posts/index.php">
                    <i class="bi bi-file-earmark-post me-2"></i> Posts
                </a>
            </li>
            <li class="nav-item mb-2">
                <a class="nav-link <?php echo $pageTitle == "categories" ? "ms-3 text-primary" : "text-muted" ?>  "
                    href="./categories/index.php">
                    <i class="bi bi-tags-fill me-2"></i> Categories
                </a>
            </li>
            <li class="nav-item mb-4">
                <a class="nav-link <?php echo $pageTitle == "Comments Management" ? "ms-3 text-primary" : "text-muted" ?>"
                    href="./comments/index.php">
                    <i class="bi bi-chat-dots-fill me-2"></i> Comments
                </a>
            </li>
        </ul>

        <hr>

        <ul class="nav flex-column fs-5">
            <li class="nav-item mb-2">
                <a class="nav-link text-muted" href="#">
                    <i class="bi bi-gear-wide-connected me-2"></i> Settings
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-muted" href="#">
                    <i class="bi bi-globe me-2"></i> View Site
                </a>
            </li>
        </ul>

    </div>
</div>
