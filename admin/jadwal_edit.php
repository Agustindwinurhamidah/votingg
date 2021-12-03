<?php
	include 'includes/session.php';

	if(isset($_POST['edit'])){
		$id = $_POST['id'];
        $description1 = $_POST['description1'];
		// $description1 = $_POST['description1'];
        $description2 = $_POST['description2'];
        $description3 = $_POST['description3'];
        $description4 = $_POST['description4'];
		// $max_vote = $_POST['max_vote'];

		$sql = "UPDATE jadwal SET description1 = '$description1' WHERE id = '$id'";
		if($conn->query($sql)){
			$_SESSION['success'] = 'Jadwal updated successfully';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}
        $sql = "UPDATE jadwal SET description2 = '$description2' WHERE id = '$id'";
		if($conn->query($sql)){
			$_SESSION['success'] = 'Jadwal updated successfully';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}
        $sql = "UPDATE jadwal SET description3 = '$description3' WHERE id = '$id'";
		if($conn->query($sql)){
			$_SESSION['success'] = 'Jadwal updated successfully';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}
        $sql = "UPDATE jadwal SET description4 = '$description4' WHERE id = '$id'";
		if($conn->query($sql)){
			$_SESSION['success'] = 'Jadwal updated successfully';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}
	}
	else{
		$_SESSION['error'] = 'Fill up edit form first';
	}

	header('location: jadwal.php');

?>