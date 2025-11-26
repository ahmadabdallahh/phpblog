<?php
include("../includes/header.php");
include("../../config/database.php");
$pageTitle = "Comments | Page";
?>

<div class="container-fluid" style="height: 100vh;">
    <div class="row">

        <?php include("../includes/sidebar.php"); ?>

        <div class="col bg-light" style="height: 150vh;">

            <h1 class="m-3"><i class="bi bi-chat-dots-fill me-2"></i> Comments Management</h1>
            <hr>

            <!-- ADD COMMENT FORM -->
            <div class="card">
                <div class="card-header">
                    <h3>Add New Comment</h3>
                </div>

                <div class="card-body">

                    <?php
                    if ($_SERVER["REQUEST_METHOD"] == "POST") {

                        $name = trim($_POST["name"]);
                        $comment = trim($_POST["comment"]);
                        $post_id = intval($_POST["post_id"]);

                        if (empty($name) || empty($comment) || empty($post_id)) {
                            echo '<div class="alert alert-warning alert-dismissible fade show" role="alert">
                                All Fields Must Be Filled
                                <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                            </div>';
                        } else {
                            $sql = "INSERT INTO comments (name, comment, post_id) VALUES (?, ?, ?)";
                            $stmt = $conn->prepare($sql);
                            $stmt->execute([$name, $comment, $post_id]);
                        }
                    }

                    // Fetch posts
                    $posts = $conn->prepare("SELECT id, title FROM posts ORDER BY id DESC");
                    $posts->execute();
                    $postsList = $posts->fetchAll(PDO::FETCH_ASSOC);
                    ?>

                    <form action="" method="post">
                        <div class="container">

                            <div class="item m-3">
                                <label>Name <span class="text-danger">*</span></label>
                                <input type="text" class="form-control" name="name">
                            </div>

                            <div class="item m-3">
                                <label>Comment <span class="text-danger">*</span></label>
                                <textarea name="comment" class="form-control" rows="3"></textarea>
                            </div>

                            <div class="item m-3">
                                <label>Post <span class="text-danger">*</span></label>
                                <select name="post_id" class="form-control">
                                    <option value="">Select Post</option>
                                    <?php foreach ($postsList as $p): ?>
                                        <option value="<?= intval($p['id']) ?>">
                                            <?= htmlspecialchars($p['title']) ?>
                                        </option>
                                    <?php endforeach; ?>
                                </select>
                            </div>

                            <button type="submit" class="btn btn-primary ms-3">
                                <i class="bi bi-plus-circle"></i> Add
                            </button>

                        </div>
                    </form>

                </div>
            </div>

            <!-- COMMENTS TABLE -->
            <?php
            $query = "SELECT comments.*, posts.title AS post_title
                      FROM comments
                      LEFT JOIN posts ON comments.post_id = posts.id
                      ORDER BY comments.id DESC";
            $stmt = $conn->prepare($query);
            $stmt->execute();
            $result = $stmt->fetchAll(PDO::FETCH_ASSOC);

            ?>

            <div class="card mt-5">
                <div class="card-header">
                    <h3>All Comments</h3>
                </div>

                <div class="card-body">

                    <?php if ($result): ?>
                        <table class="table table-hover">
                            <thead>
                                <tr class="table-dark">
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Comment</th>
                                    <th>Post</th>
                                    <th>Created At</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>

                                <?php foreach ($result as $row): ?>
                                    <tr>
                                        <td><?= htmlspecialchars($row["id"]) ?></td>
                                        <td><?= htmlspecialchars($row["name"]) ?></td>
                                        <td><?= htmlspecialchars($row["comment"]) ?></td>
                                        <td><?= htmlspecialchars($row["post_title"]) ?></td>
                                        <td><?= htmlspecialchars($row["created_at"]) ?></td>

                                        <td>
                                            <a href="./edit.php?id=<?= intval($row["id"]) ?> " class="btn btn-outline-primary btn-sm">
                                                <i class="bi bi-pencil"></i> Edit
                                            </a>

                                            <a href="./delete.php?id=<?= intval($row["id"]) ?>" class="btn btn-outline-danger btn-sm">
                                                <i class="bi bi-trash"></i> Delete
                                            </a>
                                        </td>
                                    </tr>
                                <?php endforeach; ?>

                            </tbody>
                        </table>

                    <?php else: ?>
                        <div class="alert alert-warning">No Comments Yet.</div>
                    <?php endif; ?>

                </div>
            </div>

        </div>

    </div>
</div>

<?php include("../includes/footer.php"); ?>
