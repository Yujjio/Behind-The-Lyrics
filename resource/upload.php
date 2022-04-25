<?php
if(!$_GET["judge"]) {
        header("Location: login.php");
        exit();
    }
include("db.php");
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Rate Lyrics</title>
    <link rel="stylesheet" href="css/style1.css" />
    <link rel="stylesheet" href="css/style2.css" />
</head>
<body>

<div class="nav"> 
    <span class="nav-links">
      <a class='menu' href="../index.php">Home</a>
      <a class='menu' href="upload.php" >upload Album</a>
      <a class='menu' href="logout.php" >Logout</a>
    </span>
    <div class="nav-header">
        <a id='ranking' href="../index.php">Ranking</a>
    </div> 
  </div>

<div class="container">  
  <form id="contact" action="process.php" method="post" enctype="multipart/form-data">
    <h3>Upload Album</h3>
    <h4>Enter all details</h4>

    <fieldset>
      <input placeholder="Enter Name of Artist" name="artist" type="text" tabindex="6" required>
    </fieldset>

    <fieldset>
      <input placeholder="Enter Name of Album" name="name"type="text" tabindex="1" required autofocus>
    </fieldset>
    <fieldset>
      <input placeholder="Enter Rank" name="rank" type="text" tabindex="2" required>
    </fieldset>
    <fieldset>
      <input placeholder="Your Phone Number (optional)" name="cover" type="file" tabindex="3" accept="image/png, image/jpeg" required>
    </fieldset>
    <fieldset>
      <input placeholder="Enter Score" name="score" type="text" tabindex="4" required>
    </fieldset>
    <fieldset>
      <input placeholder="Enter release date" name="year" type="text" tabindex="6" required>
    </fieldset>
    
    <fieldset>
      <textarea placeholder="Enter description about Album" name="intro" tabindex="5" required></textarea>
    </fieldset>
    
    

    <fieldset>
      <button name="album" type="submit" data-submit="...Sending">Submit</button>
    </fieldset>
  </form>
</div>


    
</body>
</html>
