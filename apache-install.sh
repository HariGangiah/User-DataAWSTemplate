#!/bin/bash

#install apache
sudo yum -y install httpd

#enable and start apache
sudo systemctl enable httpd
sudo systemctl start httpd

sudo echo '<!DOCTYPE html>

<html lang="en">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />

		<title>Hari's HTML5</title>

		<link rel="preconnect" href="https://fonts.googleapis.com" />
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
		<link
			href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700;800&display=swap"
			rel="stylesheet"
		/>

		<link rel="stylesheet" href="css/styles.css?v=1.0" />
	</head>

	<body>
		<div class="wrapper">
			<div class="container">
				<h1>Welcome!</h1>
    				<h1>This Web-Server is Created by HARI</h1>
				<h2>Server?</h2>
    				<p>:-)<p>
			</div>
		</div>
	</body>
</html>

<style>
	body {
		background-color: #000000;
		display: flex;
		align-items: center;
		justify-content: center;
		font-family: Times New Roman;
		padding-top: 128px;
	}

	.container {
		box-sizing: border-box;
		width: 741px;
		height: 449px;
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: flex-start;
		padding: 48px 48px 48px 48px;
		box-shadow: 0px 1px 32px 11px rgba(38, 37, 44, 0.49);
		background-color: #9370db;
		overflow: hidden;
		align-content: flex-start;
		flex-wrap: nowrap;
		gap: 24;
		border-radius: 24px;
	}

	.container h1 {
		flex-shrink: 0;
		width: 100%;
		height: auto; /* 144px */
		position: relative;
		color: #000000;
		line-height: 1.2;
		font-size: 40px;
	}
	.container p {
		position: relative;
		color: #000000;
		line-height: 1.2;
		font-size: 22px;
	}
</style>
' > /var/www/html/index.html
