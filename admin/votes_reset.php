<?php
	include 'includes/session.php';

	$sql = "DELETE FROM votes";
	if($conn->query($sql)){
		$_SESSION['success'] = "Reset Vote Berhasil";
	}
	else{
		$_SESSION['error'] = "Ada kesalahan reset vote";
	}

	header('location: votes.php');

?>