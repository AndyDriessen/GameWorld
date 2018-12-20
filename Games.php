<?php
$servername = "localhost:3306";
$username = "root";
$password = "";
$dbname = "gameworld";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}




?> 
<!DOCTYPE html>
<html>
	
<head>
	<meta charset="utf-8" />
	<meta name="description" content="Age of the gamepire">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<title>Age of the gamepire</title>
</head>
<body>
	
<header id="header">
		
		<div id="logo">
		<img src="background_image/jgvv_hp_houses_hogwarts_banners_grid_embed.jpg">
		
		</div>
		<nav id="navigation">
			<ul>
			    <li class="LiFloater"><a href="GameShop_AndyDriessen.php">Age of the gamepire</a></li>
				<li class="LiFloater"><a href="GameShop_AndyDriessen.php">home</a></li>
				<li class="LiFloater"><a href="games.php">games</a></li>
				<li class="LiFloater"><a href="contact.php">contact</a></li>
			</ul> 
		</nav>
	</header>
	<div class="main-container">
		<!-- <div class="game-container"> -->
			<?php
			// get the info out of the dataBase
			if (isset($_GET["categoryId"]))	 {
				$sql = "SELECT * FROM `game_world` WHERE Category_Id = '" . $_GET["categoryId"] . "'ORDER BY `game_world`.`Game_ID` ASC";
				$result = mysqli_query($conn, $sql);

				if (mysqli_num_rows($result) > 0) {
					// output data of each row
				
					while($row = mysqli_fetch_assoc($result)) {
					echo "<div class='game-container'>";
					echo "<p>" . $row['Name'] . "</p>";
					echo "<p>€"  . $row['price'] . "</p>";
					echo "<img class='picture' src='" . $row['picture']. "'><br>";
					echo "<div class ='order-button'><a href = 'checkout.php'>order</a> </div>";
					echo "</div>";
					}
				} 
				else {			
					echo "0 results";
				}
			} else {
				$sql = "SELECT * FROM `game_world` ORDER BY `game_world`.`Game_ID` ASC";
				$result = mysqli_query($conn, $sql);

				if (mysqli_num_rows($result) > 0) {
					// output data of each row
				
					while($row = mysqli_fetch_assoc($result)) {
					echo "<div class='game-container'>";
					echo "<p>" . $row['Name'] . "</p>";
					echo "<p>€"  . $row['price'] . "</p>";
					echo "<img class='picture' src='" . $row['picture']. "'><br>";
					echo "<div class ='order-button'><a href = 'checkout.php'>order</a> </div>";
					echo "</div>";
					}
				} 
				else {			
					echo "0 results";
				}
			}

			/*$i = 0;
			foreach($games as $key => $game)
			{
				$i++;
				// var_dump($game); 
				?>
				<div class = "product-item <?php if($i % 4 == 0) echo "last-product-item"; ?>">
					<h5><?= $game["Name"]?></h5>
					<img src="<?=$game['picture']?>   " alt="<?= $game['Name']?>">
					<div class = "priceTag">
						<h5> <?= $game["Price"]?><h5>
					</div>

					<div class = "order-button">
						<a href = "checkout.html">order</a> 
					</div>
				</div>

				<?php 
                }*/
            
			mysqli_close($conn);
			?>
			<div id="clearfix"></div>
		<!-- </div> -->
	</div>
	<footer id="Footer"> <img src="background_image/Copyright symbol.png">  </footer>
</body>
