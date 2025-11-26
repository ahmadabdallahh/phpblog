<?php
include("../includes/header.php");
include("../../config/database.php");
$pageTitle = "Categories | Page";

?>

<div class="container-fluid" style="height: 100vh;">
    <div class="row">

        <?php include("../includes/sidebar.php"); ?>

        <div class="col  bg-light " style="height: 150vh;">
            <h1 class="m-3"><i class="bi bi-tags-fill me-2"></i> Categories Management</h1>
            <hr>

            <div class="card">
                <div class="card-header">
                    <h3>Add New Category </h3>
                </div>

                <div class="card-body">

                    <?php
                    if ($_SERVER["REQUEST_METHOD"] == "POST") {
                        $name = trim($_POST["name"]);
                        $description = trim($_POST["description"]);

                        if (empty($name) || empty($description)) {
                            echo '
                                    <div class="alert alert-warning alert-dismissible fade show" role="alert">
                                    All Fields Must Be filed
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
            ';
                        } else {
                            $sql = 'INSERT INTO `categories`(`name`, `description`) VALUES (?,?)';
                            $stmt = $conn->prepare($sql);
                            $stmt->execute([$name, $description]);
                        }
                    }
                    ?>

                    <form action="" method="post">
                        <div class="container">
                            <div class="item m-3">
                                <label for="name">Category Name<span class="text-danger"
                                        style="font-size: 1.2rem;">*</span></label>
                                <input type="text" class=" form-control w-100" name="name" id="">
                            </div>
                            <div class="item m-3">
                                <label for="name">Category Description<span class="text-danger"
                                        style="font-size: 1.2rem;">*</span></label>
                                <input type="text" class=" form-control" name="description" id="">
                            </div>
                            <button type="submit" class="btn btn-primary ms-3"><i class="bi bi-plus-circle"></i>
                                Add</button>
                        </div>
                    </form>
                </div>
            </div>


            <!-- Table Start -->
            <?php
            $query = 'SELECT * FROM `categories` ORDER BY id DESC';
            $stmt = $conn->prepare($query);
            $stmt->execute();
            $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
            ?>
            <div class="card mt-5">
                <div class="card-header">
                    <h3>All Categories</h3>
                </div>

                <div class="card-body">
                    <?php
                    if ($result) {
                    ?>
                        <table class="table table-hover">
                            <thead>
                                <tr class="table-dark">
                                    <th scope="col">ID</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Description</th>
                                    <th scope="col">Created At</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php

                                foreach ($result as $row) {
                                ?>
                                    <tr>
                                        <th scope="row"><?= htmlspecialchars($row["id"]) ?></th>
                                        <td><?= htmlspecialchars($row["name"]) ?></td>
                                        <td><?= htmlspecialchars($row["description"]) ?></td>
                                        <td><?= htmlspecialchars($row["created_at"]) ?></td>
                                        <td>
                                            <a href="./edit.php?id=<?= intval($row["id"]) ?>&name=<?= urlencode($row['name']) ?>"
                                                class="btn btn-outline-primary btn-sm" title="Edit Category">
                                                <i class="bi bi-pencil"></i> Edit
                                            </a>
                                            <a href="./delete.php?id=<?= intval($row["id"]) ?>"
                                                class="btn btn-outline-danger btn-sm" title="Delete Category">
                                                <i class="bi bi-trash"></i> Delete
                                            </a>
                                        </td>
                                    </tr>
                            <?php }
                            } else {
                                echo '<div class="alert alert-warning alert-dismissible fade show" role="alert">
  <strong>Ohh!</strong> No Data Yet.
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>';
                            } ?>
                            </tbody>
                        </table>
                </div>
            </div>
        </div>

    </div>
</div>

<script>
    function confirmDelete(id, name) {
        return confirm('Are you sure you want to delete the category "' + name + '" (ID: ' + id + ')?\n\nThis action cannot be undone!');
    }
</script>

<?php include("../includes/footer.php") ?>
