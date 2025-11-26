<?php
include("../includes/header.php");
include("../../config/database.php");
$pageTitle = "Posts Management";

// Fetch all categories for the dropdown and reuse
$categories = [];

try {
    $categoriesStmt = $conn->query("SELECT * FROM `categories` ORDER BY id DESC");
    $categories = $categoriesStmt->fetchAll(PDO::FETCH_ASSOC);
} catch (PDOException $e) {
    $categories = [];
}

// Handle adding a Post
$message = '';
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $title = trim($_POST["title"]);
    $content = trim($_POST["content"]);
    $categoryId = isset($_POST["categories"]) ? intval($_POST["categories"]) : 0;

    // Handle Image Uploading
    $image = "";
    if (isset($_FILES["image"]) && $_FILES["image"]["error"] == 0) {
        $imageName = basename($_FILES["image"]["name"]);
        $imageTemp = $_FILES["image"]["tmp_name"];
        $targetDir = "../../uploads/";
        
        $targetPath = $targetDir . $imageName;
        if (move_uploaded_file($imageTemp, $targetPath)) {
            $image = $imageName;
        }
    }

    // Validate and insert
    if (!empty($title) && !empty($content) && $categoryId > 0 && !empty($image)) {
        try {
            $sql = "INSERT INTO `posts`(`title`, `content`, `image`, `category_id`) VALUES (?, ?, ?, ?)";
            $stmt = $conn->prepare($sql);
            $stmt->execute([$title, $content, $image, $categoryId]);
            $message = '<div class="alert alert-success alert-dismissible fade show" role="alert">
                New post added successfully!
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>';
        } catch (PDOException $e) {
            $message = '<div class="alert alert-danger alert-dismissible fade show" role="alert">
                Failed to add post: ' . htmlspecialchars($e->getMessage()) . '
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>';
        }
    } else {
        $message = '<div class="alert alert-warning alert-dismissible fade show" role="alert">
            All fields are required (including image).
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>';
    }
}

// Fetch all posts with category names
$posts = [];
try {
    $query = "SELECT posts.*, categories.name as category_name
        FROM posts
        LEFT JOIN categories ON posts.category_id = categories.id
        ORDER BY posts.id DESC";
    $postsStmt = $conn->query($query);
    $posts = $postsStmt->fetchAll(PDO::FETCH_ASSOC);
} catch (PDOException $e) {
    $posts = [];
}
?>

<div class="container-fluid" style="height: 100vh;">
    <div class="row">

        <?php include("../includes/sidebar.php"); ?>

        <div class="col bg-light" style="height: 150vh;">
            <h1 class="m-3"><i class="bi bi-file-earmark-post"></i> Posts Management</h1>
            <hr>

            <div class="card">
                <div class="card-header">
                    <h3>Add New Post </h3>
                </div>
                <div class="card-body">
                    <?= $message ?? '' ?>
                    <form action="" method="post" enctype="multipart/form-data">
                        <div class="container">
                            <div class="item m-3">
                                <label for="title">Post Name*</label>
                                <input type="text" class="form-control w-100" name="title" id="title" required>
                            </div>
                            <div class="item m-3">
                                <label for="content">Post Content*</label>
                                <input type="text" class="form-control w-100" name="content" id="content" required>
                            </div>
                            <div class="item m-3">
                                <label for="image">Image*</label>
                                <input type="file" class="form-control w-100" name="image" id="image" required>
                            </div>
                            <div class="item m-3">
                                <label for="categories">Categories *</label>
                                <select name="categories" id="categories" class="form-select" required>
                                    <option value="">Select categoria...</option>
                                    <?php foreach ($categories as $cat): ?>
                                        <option value="<?= intval($cat['id']) ?>">
                                            <?= htmlspecialchars($cat['name']) ?>
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

            <!-- table start -->
            <div class="card mt-5">
                <div class="card-header">
                    <h3>All Posts</h3>
                </div>
                <div class="card-body">
                    <?php if ($posts): ?>
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th scope="col">ID</th>
                                    <th scope="col">Title</th>
                                    <th scope="col">Content</th>
                                    <th scope="col">Category</th>
                                    <th scope="col">Image</th>
                                    <th scope="col">Created At</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($posts as $post): ?>
                                    <tr>
                                        <td><?= htmlspecialchars($post['id']) ?></td>
                                        <td><?= htmlspecialchars($post['title']) ?></td>
                                        <td><?= htmlspecialchars($post['content']) ?></td>
                                        <td><?= htmlspecialchars($post['category_name'] ?? '-') ?></td>
                                        <td>
                                            <?php if (!empty($post['image'])): ?>
                                                <img src="../../uploads/<?= htmlspecialchars($post['image']) ?>" alt="Post Image"
                                                    style="width:70px;height:auto;">
                                            <?php else: ?>
                                                -
                                            <?php endif; ?>
                                        </td>
                                        <td><?= htmlspecialchars($post['created_at']) ?></td>
                                        <td>
                                            <a href="./edit.php?id=<?= intval($post['id']) ?>"
                                                class="btn btn-outline-primary btn-sm" title="Edit Post">
                                                <i class="bi bi-pencil"></i> Edit
                                            </a>
                                            <a href="./delete.php?id=<?= intval($post['id']) ?>"
                                                class="btn btn-outline-danger btn-sm" title="Delete Post"
                                                onclick="return confirm('Are you sure you want to delete this post?');">
                                                <i class="bi bi-trash"></i> Delete
                                            </a>
                                        </td>
                                    </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>
                    <?php else: ?>
                        <div class="alert alert-warning alert-dismissible fade show" role="alert">
                            <strong>Ohh!</strong> No Posts Yet.
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </div>
</div>

<?php include("../includes/footer.php") ?>
