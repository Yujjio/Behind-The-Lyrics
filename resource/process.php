<?php
    require('db.php');
    // When form submitted, insert values into the database.
    if (isset($_POST['album'])) {
        
        $name    = stripslashes($_POST['name']);
        $name    = mysqli_real_escape_string($con, $name);

        $rank    = stripslashes($_POST['rank']);
        $rank    = mysqli_real_escape_string($con, $rank);

        $score    = stripslashes($_POST['score']);
        $score    = mysqli_real_escape_string($con, $score);

        $intro    = stripslashes($_POST['intro']);
        $intro    = mysqli_real_escape_string($con, $intro);

        $artist    = stripslashes($_POST['artist']);
        $artist    = mysqli_real_escape_string($con, $artist);

        $filename = $_FILES["cover"]["name"];
        $tempname = $_FILES["cover"]["tmp_name"];
        $folder = "pic/".$filename;
        move_uploaded_file($tempname, $folder);

        $query    = "INSERT into `album` (name, rank, cover, score, intro, artist, date) VALUES ('$name', '$rank', '$filename', '$score', '$intro', '$artist', '".date("Y-m-d")."')";
        $result   = mysqli_query($con, $query);
        header("Location: index.php");
    }
?>