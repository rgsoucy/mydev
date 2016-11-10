<?php
    include('includes/header.php');
    include('includes/posts.php');
?>

    <div class="container">

      <div class="blog-header">
        <h1 class="blog-title">The Bootstrap Blog</h1>
        <p class="lead blog-description">The official example template of creating a blog with Bootstrap.</p>
      </div>

      <div class="row">

        <div class="col-sm-8 blog-main">

        <?php foreach( $posts as $post ) { ?>
            
          <div class="blog-post">
            <h2 class="blog-post-title"><?php echo $post["post-title"]; ?></h2>
            <p class="blog-post-meta"><?php echo $post["post-date"]; ?> by <a href="#"><?php echo $post["post-author"]; ?></a></p>

              <?php echo $post["post-content"]; ?>
            
          </div><!-- /.blog-post -->
        <?php } ?>
            
          <nav>
            <ul class="pager">
              <li><a href="#">Previous</a></li>
              <li><a href="#">Next</a></li>
            </ul>
          </nav>

        </div><!-- /.blog-main -->
          
        <div class="col-sm-3 col-sm-offset-1 blog-sidebar">
          <?php include('includes/sidebar.php'); ?>
        </div><!-- /.blog-sidebar -->

      </div><!-- /.row -->

    </div><!-- /.container -->

<?php include('includes/footer.php'); ?>