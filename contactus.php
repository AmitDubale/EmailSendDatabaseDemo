<?php 
require_once('module/Core.php');
require 'PHPMailerAutoload.php';
error_reporting(0);

if(isset($_REQUEST['submit']))
{						
	$full_name=stripslashes(trim(isset($_POST['full_name'])?$_POST['full_name']:''));				
	$full_name=stripslashes(trim(isset($_POST['full_name'])?$_POST['full_name']:''));				
	$email=stripslashes(trim(isset($_POST['email'])?$_POST['email']:''));				
	$phone_number=stripslashes(trim(isset($_POST['phone_number'])?$_POST['phone_number']:''));		
	$user_message=stripslashes(trim(isset($_POST['user_message'])?$_POST['user_message']:''));
	if(isset($_POST['status'])!=''){ $status='No';} else { $status='Yes';}
	$status=$status;
					
	if(empty($full_name)){
	$err[]= "Enter Name  ";
	}
	if(empty($email)){
	$err[]= "Enter Email  ";
	}
	if(empty($user_message)){
	$err[]= "Enter Message  ";
	}
	if(empty($phone_number)){
	$err[]= "Enter Phone No  ";
	}
	
	$add_datetime=date('Y-m-d H:i:s');	
	if(empty($err)){		
	$data=array(
	'full_name'=>$full_name,	
	'full_name'=>$full_name,	
	'email'=>$email,	
	'phone_number'=>$phone_number,	
	'user_message'=>$user_message,
	'add_datetime'=>$add_datetime,
	'status'=>$status
	);
		insertRecord('contactus_lists',$data);		
		echo "<script>alert('Enquiry Successfully Send ');</script>";
				
		if($email!=''){
		$emails="amit.dubale10@gmail.com";
		$to  = 'amit.dubale10@gmail.com'; // note the comma		

		// subject
		$subject = 'Email Enquire From '.$full_name;

		// message
		$message = "<html><head><title>Email Enquire</title></head><body><h3>Email Enquire</h3><table border='0'> <tr><td>Full Name : </td><td>".$full_name ."</td></tr><tr><td>Phone Number : </td><td>".$phone_number ."</td></tr> <tr><td>Email : </td><td>".$email ."</td></tr><tr><td>Message : </td><td>".$user_message ."</td></tr></html></body>";

		$mail = new PHPMailer;
		$mail->From = 'amit.dubale10@gmail.com';
		$mail->FromName = $full_name;
		$mail->addAddress('amit.dubale10@gmail.com', 'Email Enquire');  // Add a recipient
		$mail->addCC($emails, 'Email Enquire');
		$mail->addCC($email);
		$mail->addCC($to);
	
		$mail->WordWrap = 150;                              // Set word wrap to 50 characters
		//$mail->addAttachment($tmpName,$fileName);         // Add attachments
		//$mail->addAttachment('/tmp/image.jpg', 'new.jpg');    // Optional name
		$mail->isHTML(true);                                  // Set email format to HTML

		$mail->Subject = $subject;
		$mail->Body    = $message;
		//$mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

		if(!$mail->send()) {
		//echo '<script>alert("Enquire Not Send Successfully ! Please Fill Proper Form.");</script>';	
		//echo'<script>window.location="signup.php";</script>'; // redriect	
		} else {
		//echo '<script>alert("Thank You. We will call you shortly.");</script>';	
		echo'<script>window.location="contactus.php";</script>'; // redriect
		}
		echo'<script>window.location="contactus.php";</script>'; // redriect
		}
	}
}			
?>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

	<center><h3>Contact Form</h3></center>
	<div class="container">
	  <form role="form" action="contactus.php" name="submit" method="post">
		<label for="fname">Full Name</label>
		<input type="text" id="fname" name="full_name" placeholder="Your Full Name.." required>

		<label for="lname">Phone Number</label>
		<input type="text" id="lname" name="phone_number" placeholder="Your Phone Number.." required>
		
		<label for="lname">Email Id</label>
		<input type="text" id="lname" name="email" placeholder="Your Email Id.." required>

		<label for="addrress">Address</label>
		<textarea id="addrress" name="user_message" placeholder="Write something.." style="height:200px" required></textarea>

		<center><button type="submit" id="submit" name="submit">Send</button></center>
		
	  </form>
	</div>

</body>
</html>

