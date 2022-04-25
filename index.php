<?php
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
?>
<!DOCTYPE html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Behind the lyrics</title>
	<link rel="icon" type="image/x-icon" href="resource/pic/icon.jpg">
	<link rel="stylesheet" href="resource/css/index_css.css" type="text/css">
	<link rel="stylesheet" href="resource/css/style1.css">
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script type="text/javascript" src="resource/js/index_js.js"></script>
	<style type="text/css">
		#stretch:hover {
			cursor: pointer;
		}
	</style>
</head>
<div id="mainbody">
	<div class="nav"> 
	  <span class="nav-links">
	    <a class='menu' href="index.php">Home</a>
	    <?php 
	    	$username = '';
	    	$judge = false;
	    	if(isset($_GET['username'])){ 
	    		$username = $_GET['username'];
	    		$judge = true;
	    	}
    	?>
	    <a class='menu' href="resource/upload.php?judge=<?php echo $judge;?>">upload Album</a>
	    <?php if(!isset($_GET['username'])){ ?>
	    <a class='menu' href="resource/login.php" >login</a>
	    <a class='menu' href="resource/registration.php" >Signup</a>
	    <?php }else{ ?>
	    <a class='menu' href="resource/logout.php" >Logout</a>
	    <?php } ?>
	  </span>
	  <div class="nav-header">
	    	<a id='ranking' href="index.php">Ranking</a>
	  </div> 
	</div>
	<span id="category">
		<span id="stretch" title="category">
			<p id="arrow">></p>
		</span>
		<div id="main_part">
			<h1 id="category_title">Category</h1>
			<br>
			<ul id="category_list">
				<li id="category_year" class="overall"><h3>year</h3></li>
					<ul id="year">
					</ul>
				<li id="category_language" class="overall"><h3>language</h3></li>
					<ul id="language">
					</ul>
				<li id="category_style" class="overall"><h3>style</h3></li>
					<ul id="style">
					</ul>
				<li id="category_environment" class="overall"><h3>occasion</h3></li>
					<ul id="environment">
					</ul>
			</ul>
			<br>
			<div id="datepicker">
				<table id="date_table">
					<tr>
						<th rowspan="7"><<</th>
						<th rowspan="2"><</th>
						<th colspan="5" id="date_year">2000</th>
						<th rowspan="2">></th>
						<th rowspan="7">>></th>
					</tr>
					<tr>
						<th colspan="5" id="date_month">1</th>
					</tr>
					<tr>
						<th id="day_1">1</th>
						<th id="day_2">2</th>
						<th id="day_3">3</th>
						<th id="day_4">4</th>
						<th id="day_5">5</th>
						<th id="day_6">6</th>
						<th id="day_7">7</th>
					</tr>
					<tr>
						<th id="day_8">8</th>
						<th id="day_9">9</th>
						<th id="day_10">10</th>
						<th id="day_11">11</th>
						<th id="day_12">12</th>
						<th id="day_13">13</th>
						<th id="day_14">14</th>
					</tr>
					<tr>
						<th id="day_15">15</th>
						<th id="day_16">16</th>
						<th id="day_17">17</th>
						<th id="day_18">18</th>
						<th id="day_19">19</th>
						<th id="day_20">20</th>
						<th id="day_21">21</th>
					</tr>
					<tr>
						<th id="day_22">22</th>
						<th id="day_23">23</th>
						<th id="day_24">24</th>
						<th id="day_25">25</th>
						<th id="day_26">26</th>
						<th id="day_27">27</th>
						<th id="day_28">28</th>
					</tr>
					<tr>
						<th id="day_29">29</th>
						<th id="day_30">30</th>
						<th id="day_31">31</th>
						<th></th>
						<th></th>
						<th></th>
						<th></th>
					</tr>
				</table>
			</div>
		</div>
	</span>
	<div id="album_song">
	<span id="songs"></span>
	<div id="album">
		<h1 id="title">Behind the Lyrics</h1>
		<br>
		<?php
			if ($dbOk) {
				$query = 'select * from album order by rank';
				$result = $db->query($query);
		    $numRecords = $result->num_rows;
		    $song_array = array();
		    for ($i=0; $i < $numRecords; $i++) {
	    		$record = $result->fetch_assoc();
	    		echo "<div class='album_each' id='album".$record['id']."'>";
	    			echo "<span class='album_list'>";
		    		 	echo "<img class='cover' src=\"".$record['cover']."\">";
		    		 	echo "<h2 class='album_rank'>rank: #";
		    		 	echo $record['rank']."</h2>";
		    		echo "</span>";
	    			echo "<table class='album_table'>";
	    				echo "<tr>";
	    				echo "<td>";
	    				echo "<div class='album_name'>";
	    				echo "<h4 class='name'>".$record['name']."</h4>";
		    		 	echo "</div>";
		    		 	echo "</td>";
		    		 	echo "<td>";
		    		 		echo "<div class='album_info'>";
			    		 		echo "<h4 class='rank info'>date: ".$record['date']."</h4>";
					    	 	echo "<h4 class='score info'>score: ".$record['score']." / 10</h4>";
					    	 	echo "<h4 class='artist info'> artist: </h4>";
					    	 	echo "<p class='artist_name'>".$record['artist']."</pre>";
					    	echo "</div>";
		    		 	echo "</td>";
		    		 	echo "<td>";
		    		 		echo "<div class='album_intro'>";
		    		 			echo "<p class='intro'>".$record['intro']."</p>";
		    		 		echo "<div>";
		    		 	echo "</td>";
	    				echo "</tr>";
	    			echo "</table>";
	    			$category_query = "select * from category where id='".$record['id']."'";
		    		$category_result = $db->query($category_query);
		    		$category_record = $category_result->fetch_assoc();
	    			echo "<ul class='lable'>";
		    			echo "<li class='lable_each ".$category_record['year']."'>";
		    			echo $category_record['year'];
		    			echo "</li>";
		    			echo "<li class='lable_each ".$category_record['lang']."'>";
		    			echo $category_record['lang'];
		    			echo "</li>";
		    			$style_query = "select class from style where number='".$category_record['id']."'";
							$style_result = $db->query($style_query);
	    				$style_numRecords = $style_result->num_rows;
	    				for ($j=0; $j < $style_numRecords; $j++) {
								$style_record = $style_result->fetch_assoc();
								echo "<li class='lable_each ".$style_record['class']."'>";
		    				echo $style_record['class'];
		    				echo "</li>";
							}
							$occasion_query = "select place from occasion where number='".$category_record['id']."'";
							$occasion_result = $db->query($occasion_query);
	    				$occasion_numRecords = $occasion_result->num_rows;
	    				for ($j=0; $j < $occasion_numRecords; $j++) {
								$occasion_record = $occasion_result->fetch_assoc();
								echo "<li class='lable_each ".$occasion_record['place']."'>";
		    				echo $occasion_record['place'];
		    				echo "</li>";
							}
	    			echo "</ul>";
		    	echo "</div>";
    			echo "<br>";
	    		echo "<p class='end'></p>";
	    		echo "<br>";
	    		$songs_query = "select * from songs where list_number='".$record['id']."'";
					$songs_result = $db->query($songs_query);
			    $songs_numRecords = $songs_result->num_rows;
			    $song_html = "<h1 id='song_title'>".$record['name']."</h1><br><ul id='song_list'>";
			    for ($j=0; $j < $songs_numRecords; $j++) {
		    		$songs_record = $songs_result->fetch_assoc();
		    		$song_html .= "<li class='song_each'><a class='link_use' href='resource/lyrics.php?song_id=";
		    		$song_html .= $songs_record['id'];
		    		$song_html .= "'><h3>";
		    		$song_html .= $songs_record['song'];
		    		$song_html .= "</h3></a></li>";
		    	}
		    	$song_html .= "</ul>";
		    	$song_array[$record['name']] = $song_html;
	    		echo '<script type="text/javascript">';
		      	echo '$(document).ready(function() {';
		      		echo '$(';
		      		echo "'#album".$record['id']."').click(function(){";
		      			echo "if(check_album) {";
			      			echo "if(!check_slide){";
			      				echo "check_slide = true;";
			      				echo '$(';
			      				echo "'#main_part').animate({'left': '-=260px'}, 'slow');";
			      				echo '$(';
			      				echo "'#stretch').animate({'left': '-=260px'}, 'slow');";
			      				echo '$(';
			      				echo "'#arrow').text('>');";
			      			echo "};";
			      			echo '$(';
			      			echo "'#album').animate({'margin-left': '-=220px'}, 'slow');";
			      			echo '$(';
			      			echo "'#category').animate({'width': '-=220px'}, 'slow');";
			      			echo '$(';
			      			echo "'#songs').html(\"".$song_array[$record['name']]."\");";
			      			echo '$(';
			      			echo "'#songs').css('display', 'inline');";
			      			$count = $record['id'];
			      			for ($j=1; $j < $count; $j++) {
			      				echo '$(';
			      				echo "'#album".$j."').css('-webkit-filter', 'blur(5px)');";
			      				echo '$(';
			      				echo "'#album".$j."').css('-moz-filter','blur(5px)');";
			      				echo '$(';
			      				echo "'#album".$j."').css('-ms-filter', 'blur(5px)');";
			      				echo '$(';
			      				echo "'#album".$j."').css('filter', 'blur(5px)');";
			      			}
			      			for ($j=$count+1; $j < $numRecords+1; $j++) {
			      				echo '$(';
			      				echo "'#album".$j."').css('-webkit-filter', 'blur(5px)');";
			      				echo '$(';
			      				echo "'#album".$j."').css('-moz-filter', 'blur(5px)');";
			      				echo '$(';
			      				echo "'#album".$j."').css('-ms-filter', 'blur(5px)');";
			      				echo '$(';
			      				echo "'#album".$j."').css('filter', 'blur(5px)');";
			      			}
			      			echo '$(';
				      		echo "'#songs').css('background-color', '#ffe7a3');";
			      			echo "check_album = false;";
			      		echo "}";
			      		echo "else {";
		      				echo "check_album='true';";
		      				echo '$(';
		      				echo "'#songs').css('display', 'none');";
		      				$count = $record['id'];
			      			for ($j=1; $j < $count; $j++) {
			      				echo '$(';
			      				echo "'#album".$j."').css('-webkit-filter', 'blur(0px)');";
			      				echo '$(';
			      				echo "'#album".$j."').css('-moz-filter','blur(0px)');";
			      				echo '$(';
			      				echo "'#album".$j."').css('-ms-filter', 'blur(0px)');";
			      				echo '$(';
			      				echo "'#album".$j."').css('filter', 'blur(0px)');";
			      			}
			      			for ($j=$count+1; $j < $numRecords+1; $j++) {
			      				echo '$(';
			      				echo "'#album".$j."').css('-webkit-filter', 'blur(0px)');";
			      				echo '$(';
			      				echo "'#album".$j."').css('-moz-filter', 'blur(0px)');";
			      				echo '$(';
			      				echo "'#album".$j."').css('-ms-filter', 'blur(0px)');";
			      				echo '$(';
			      				echo "'#album".$j."').css('filter', 'blur(0px)');";
			      			}
		      				echo '$(';
		      				echo "'#album').animate({'margin-left': '+=220px'}, 'slow');";
		      				echo '$(';
		      				echo "'#category').animate({'width': '+=220px'}, 'slow');";
			      		echo "}";
		    			echo '});';
		    			
		      	echo '});';
	      	echo '</script>';
		    }
		    $result->free();
    		$db->close();
		  }
		?>
	</div>
	</div>
</div>