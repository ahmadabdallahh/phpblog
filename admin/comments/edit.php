<?php


include("../../config/database.php");
include("../includes/header.php");
$pageTitle = "Edit Comment";

$id = isset($_GET['id']) ? $_GET['id'] : 0;

if ($id <= 0) {
    header("Location: index.php");
    exit;
}

$sql = "SELECT * FROM comments WHERE id = ?";
$stmt = $conn->prepare($sql);
$stmt->execute([$id]);
$comment = $stmt->fetch(PDO::FETCH_ASSOC);

if (!$comment) {
    include("../includes/sidebar.php");
    echo '<div class="col bg-light" style="min-height:80vh; padding:30px;">
            <div class="alert alert-danger">Comment not found.</div>
            <a href="index.php" class="btn btn-secondary">Back to Comments</a>
          </div>';
    include("../includes/footer.php");
    exit;
}

$postsStmt = $conn->prepare("SELECT id, title FROM posts ORDER BY id DESC");
$postsStmt->execute();
$postsList = $postsStmt->fetchAll(PDO::FETCH_ASSOC);

$errors = [];
$success = "";
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $name    = isset($_POST['name']) ? trim($_POST['name']) : '';
    $commentText = isset($_POST['comment']) ? trim($_POST['comment']) : '';
    $post_id = isset($_POST['post_id']) ? intval($_POST['post_id']) : 0;


    if (empty($errors)) {
        $updateSql = "UPDATE comments SET name = ?, comment = ?, post_id = ? WHERE id = ?";
        $updateStmt = $conn->prepare($updateSql);
        $ok = $updateStmt->execute([$name, $commentText, $post_id, $id]);

        if ($ok) {
            header("Location: index.php");
            exit;
        } else {
            $errors[] = "Failed to update the comment. Try again.";
        }
    }

    $comment['name'] = $name;
    $comment['comment'] = $commentText;
    $comment['post_id'] = $post_id;
}

?>

<div class="container-fluid" style="height: 100vh;">
    <div class="row">

        <?php include("../includes/sidebar.php"); ?>

        <div class="col bg-light" style="height: 150vh;">
            <h1 class="m-3"><i class="bi bi-pencil-square"></i> Edit Comment</h1>
            <hr>

            <div class="container bg-white p-3 card">

                <?php if (!empty($errors)): ?>
                    <div class="alert alert-danger">
                        <ul class="mb-0">
                            <?php foreach ($errors as $e): ?>
                                <li><?= htmlspecialchars($e) ?></li>
                            <?php endforeach; ?>
                        </ul>
                    </div>
                <?php endif; ?>

                <form method="post" action="">
                    <div class="container">

                        <div class="item m-3">
                            <label for="name">Name*</label>
                            <input id="name" type="text" class="form-control" name="name"
                                value="<?= htmlspecialchars($comment['name'] ?? '') ?>" required>
                        </div>

                        <div class="item m-3">
                            <label for="comment">Comment*</label>
                            <textarea id="comment" class="form-control" name="comment" rows="4" required><?= htmlspecialchars($comment['comment'] ?? '') ?></textarea>
                        </div>

                        <div class="item m-3">
                            <label for="post_id">Post*</label>
                            <select id="post_id" name="post_id" class="form-control" required>
                                <option value="">Select Post</option>
                                <?php foreach ($postsList as $p): ?>
                                    <option value="<?= intval($p['id']) ?>" <?= (isset($comment['post_id']) && $p['id'] == $comment['post_id']) ? 'selected' : '' ?>>
                                        <?= htmlspecialchars($p['title']) ?>
                                    </option>
                                <?php endforeach; ?>
                            </select>
                        </div>

                        <button type="submit" class="btn btn-success ms-3">
                            <i class="bi bi-pencil-square"></i> Update
                        </button>

                        <a href="index.php" class="btn btn-secondary ms-3">
                            <i class="bi bi-x-circle"></i> Cancel
                        </a>

                    </div>
                </form>
            </div>

        </div>

    </div>
</div>

<?php include("../includes/footer.php"); ?>
