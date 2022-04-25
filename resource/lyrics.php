<?php
  // connect to mysql
  $dbOk = false;
  
  /* Create a new database connection object, passing in the host, username,
     password, and database to use. The "@" suppresses errors. */
  @ $db = new mysqli('localhost', 'root','', 'term');
  
  if ($db->connect_error) {
    echo '<div class="messages">Could not connect to the database. Error: ';
    echo $db->connect_errno . ' - ' . $db->connect_error . '</div>';
  } else {
    $dbOk = true; 
  }
  $song_id = "";
  // get lyrics
  if ($dbOk) {
    $song_id = $_GET['song_id'];
    $lyrics_query = "select * from lyrics where song='".$song_id."'";
    $lyrics_result = $db->query($lyrics_query);
    $lyrics_numRecords = $lyrics_result->num_rows;
  }
  // check whether user submit new comment
  $have_like = isset($_GET['like_lyric_id']);
  $like = "";
  if ($have_like) {
    $like = $_GET['like_lyric_id'];
    $like_query = "update lyrics set like_num=like_num+1 where id='".$like."'";
    $statement = $db->prepare($like_query);
    $statement->execute();
  }

  $havePost = isset($_POST["save"]);
  $errors = false;
  $comment_array = array();
  if ($havePost) {
    $lyric_id = htmlspecialchars(trim($_POST["lyric_id"]));
    $comment = htmlspecialchars(trim($_POST["comment"]));
    $focusId = '';
    if ($lyric_id == '') {
      $errors = true;
      if ($focusId == '') 
        $lyric_id = '#lyric_id';
    }
    if ($comment == '') {
      $errors = true;
      if ($focusId == '') 
        $focusId = '#comment';
    }
    if ($errors) {
          echo '<script type="text/javascript">';
            echo "judge_blank = true;";
          echo '</script>';
    } 
    // post comment
    else {
        $insQuery = "insert into comments (`comment`,`lyric`) values(?,?)";
        $statement = $db->prepare($insQuery);
        // bind our variables to the question marks
        $statement->bind_param("ss",$comment,$lyric_id);
        // make it so:
        $statement->execute();
        echo '<script type="text/javascript">';
          echo "judge_post = true;";
        echo '</script>';
        $statement->close();
    }
  }
?>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Rate Lyrics</title>
  <link rel="icon" type="image/x-icon" href="pic/icon.jpg">
  <link rel="stylesheet" href="css/lyrics_css.css" type="text/css">
  <link rel="stylesheet" href="css/style1.css">
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script type="text/javascript" src="js/lyrics_js.js"></script>
</head>
<div id="mainbody">
  <div class="nav"> 
    <span class="nav-links">
      <a class='menu' href="../index.php">Home</a>
      <?php 
        $username = '';
        $judge = false;
        if(isset($_GET['username'])){ 
          $username = $_GET['username'];
          $judge = true;
        }
      ?>
      <a class='menu' href="upload.php?judge=<?php echo $judge;?>">upload Album</a>
      <?php if(!isset($_GET['username'])){ ?>
      <a class='menu' href="login.php" >login</a>
      <a class='menu' href="registration.php" >Signup</a>
      <?php }else{ ?>
      <a class='menu' href="logout.php" >Logout</a>
      <?php } ?>
    </span>
    <div class="nav-header">
        <a id='ranking' href="../index.php">Ranking</a>
    </div> 
  </div>
  <span id="comments">
    <div id="comments_showed">
    </div>
    <br>
    <form id="addForm" name="addForm" action='lyrics.php
    <?php 
      echo "?song_id=";
      echo $song_id;
      echo "'";
    ?>
    method="post" onsubmit="return validate(this);">
        <div class="formData">
          <label class="field" for="lyric_id">lyric_id:</label>
          <div class="value"><input type="text" size="50" value="<?php if($havePost && $errors != '') { echo $lyric_id; } ?>" name="lyric_id" id="lyric_id" value="try"></input></div>
          <label class="field" for="comment">Comments:</label>
          <div class="value">
            <textarea type="text" rows="10" cols="50" value="<?php if($havePost && $errors != '') { echo $comment; } ?>" name="comment" id="comment"/></textarea>
          </div>
          <input type="submit" value="save" id="save" name="save"/>
        </div>
    </form>
  </span>
  <div id="lyrics">
    <?php
      if ($dbOk) {
        for ($i=0; $i < $lyrics_numRecords; $i++) {
          $lyrics_record = $lyrics_result->fetch_assoc();
          echo "<h3 class='sentence' id='lyric".$lyrics_record['id']."'>".$lyrics_record['sentence']."</h3>";
          $comments_query = "select * from comments where lyric='".$lyrics_record['id']."'";
          $comments_result = $db->query($comments_query);
          $comments_numRecords = $comments_result->num_rows;
          $comment_html = "<h2 id='lyric_title'>Lyric id: ";
          $comment_html .= $lyrics_record['id'];
          $comment_html .= "</h2>";
          $comment_html .= "<ul id='lyric_list'>";
          echo "<table id='lyric_info>'";
            echo "<tr>";
              echo "<td>lyric id: ";
                echo $lyrics_record['id'];
              echo "</td>";
              echo "<td>comments: ";
                echo $comments_numRecords;
              echo "</td>";
              
                if($have_like && $lyrics_record['id'] == $like) {
                    echo "<td>like: ";
                      echo $lyrics_record['like_num']+1;
                    echo "</td>";
                    echo "<td>";
                    echo "<img class='like' src='pic/like_hover.png' id='like".$lyrics_record['id']."'>";
                    $have_like = false;
                }
                else {
                  echo "<td>like: ";
                    echo $lyrics_record['like_num'];
                  echo "</td>";
                  echo "<td>";
                  echo "<a href='lyrics.php?like_lyric_id=".$lyrics_record['id']."&song_id=".$song_id."'>";
                  echo "<img class='like' src=\"pic/like.png\" onmouseover=\"this.src='pic/like_hover.png'\" onmouseout=\"this.src='pic/like.png'\" id='like".$lyrics_record['id']."'>";
                  echo "</a>";
                }
              echo "</td>";
            echo "</tr>";
          echo "</table>";
          // echo '<script type="text/javascript">';
          //   echo '$(document).ready(function() {';
          //     echo '$(';
          //     echo "'#like".$lyrics_record['id']."').click(function(){";
          //     echo '});';
          //   echo '});';
          // echo '</script>';
          for ($j=0; $j < $comments_numRecords; $j++) { 
            $comments_record = $comments_result->fetch_assoc();
            $comment_html .= "<li class='comments'>";
            $comment_html .= $comments_record['comment'];
            $comment_html .= "</li><br>";
          }
          $comment_html .= "</ul>";
          $comment_array[$lyrics_record['id']] = $comment_html;
          echo '<script type="text/javascript">';
            echo "judge_border = false;";
            echo "border_id = '';";
            echo '$(document).ready(function() {';
              echo '$(';
              echo "'#lyric".$lyrics_record['id']."').click(function(){";
                  echo "if(judge_border){";
                    echo '$(';
                    echo "border_id).css('font-size', '1.17em');";
                    echo '$(';
                    echo "border_id).css('border-bottom', 'none');";
                    echo '$(';
                    echo "border_id).css('font-family', 'none');";
                  echo  "}";
                  echo "judge_border = true;";
                  echo "border_id="."'#lyric".$lyrics_record['id']."';";
                  echo '$(';
                  echo "'#lyric".$lyrics_record['id']."').css('border-bottom', '3px dotted black');";
                  echo '$(';
                  echo "'#lyric".$lyrics_record['id']."').css('font-size', '20px');";
                  echo '$(';
                  echo "'#comments_showed').html(\"".$comment_array[$lyrics_record['id']]."\");";
                  echo '$(';
                    echo "border_id).css('font-family', 'Impact');";
                  echo '$(';
                  echo "'#lyric_id').val(\"".$lyrics_record['id']."\");";
              echo '});';
            echo '});';
          echo '</script>';
        }
      }
    ?>
  </div>
</div>