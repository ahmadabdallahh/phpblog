<?php
include("../../config/database.php");
include("../includes/header.php");
$pageTitle = "Edit Page";

// NOTE: Getting id and Category Name with validation
$id = $_GET["id"];
$name = $_GET["name"];

// INFO: Handle Data
$sql = "SELECT * FROM `categories` WHERE id=?";
$stmt = $conn->prepare($sql);
$stmt->execute([$id]);

$result = $stmt->fetch(PDO::FETCH_ASSOC);
?>

<div class="container-fluid" style="height: 100vh;">
    <div class="row">

        <?php include("../includes/sidebar.php"); ?>

        <div class="col  bg-light " style="height: 150vh;">
            <h1 class="m-3"><i class="bi bi-pencil-square"></i> Edit <?= htmlspecialchars($name) ?> Category</h1>
            <hr>

            <div class="container bg-white p-3 card">

                <?php
                // HACK: Handle Update

                if ($_SERVER["REQUEST_METHOD"] === "POST") {
                    $name = trim($_POST["name"]);
                    $description = trim($_POST["description"]);

                    if (!empty($name) && !empty($description)) {
                        $sql = "UPDATE `categories` SET `name`=?,`description`=? WHERE id=?";
                        $stmt = $conn->prepare($sql);
                        $stmt->execute([$name, $description, $id]);

                        echo '<div class="alert alert-success alert-dismissible fade show" role="alert">
                            <strong>Category</strong> Updated Successfully. Redirecting in 5 seconds...
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>';

                        echo '<script>
                                setTimeout(function() {
                                    window.location.href = "index.php";
                                }, 5000);
                            </script>';
                    } else {
                        echo '<div class="alert alert-danger alert-dismissible fade show" role="alert">
                            <strong>Failed </strong> All Fields Must Be Filled
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                            </div>';
                    }
                }
                ?>

                <form action="" method="POST">
                    <div class="container">
                        <div class="item m-3">
                            <label for="name">Category Name*</label>
                            <input type="text" class=" form-control w-100" name="name" id="name"
                                value="<?= htmlspecialchars($result["name"]) ?>" required>
                        </div>
                        <div class="item m-3">
                            <label for="description">Category Description*</label>
                            <input type="text" class=" form-control" name="description" id="description"
                                value="<?= htmlspecialchars($result["description"]) ?>" required>
                        </div>
                        <button type="submit" class="btn btn-success ms-3"> <i class="bi bi-pencil-square"></i>
                            Update</button>
                        <a href="index.php" class="btn btn-secondary ms-3"> <i class="bi bi-x-circle"></i> Cancel</a>
                    </div>
                </form>
            </div>

        </div>


    </div>
</div>

<?php include("../includes/footer.php") ?>
