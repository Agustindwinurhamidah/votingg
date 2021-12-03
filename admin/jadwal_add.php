<?php
	include 'includes/session.php';

	if(isset($_POST['add'])){
		$description1 = $_POST['description1'];
        $description2 = $_POST['description2'];
        $description3 = $_POST['description3'];
        $description4 = $_POST['description4'];
		// $max_vote = $_POST['max_vote'];

		$sql = "SELECT * FROM jadwal ORDER BY priority DESC LIMIT 1";
		$query = $conn->query($sql);
		$row = $query->fetch_assoc();

		$priority = $row['priority'] + 1;
		
		$sql = "INSERT INTO jadwal (description1, description2, description3, description4, priority) VALUES ('$description1', '$description2', '$description3', '$description4', '$priority')";
		if($conn->query($sql)){
			$_SESSION['success'] = 'Jadwal added successfully';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}

	}
	else{
		$_SESSION['error'] = 'Fill up add form first';
	}

	header('location: jadwal.php');
?>