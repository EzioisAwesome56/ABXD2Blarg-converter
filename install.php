<!doctype html>
<html>
<head>
<title>ABXD2Blarg Converter</title>
<style type="text/css">
a:link { color: #0e5; }
a:visited { color: #0e5; }
a:hover, a:active { color: #bfb; }

html, body { width: 100%; height: 100%; }

body
{
	font: 12pt 'Arial', 'Helvetica', sans-serif;
	background: #222;
	margin: 0;
	padding: 0;
	text-align: center;
	color: #fff;
}

#container
{
	background: #032;
	min-height: 100%;
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	max-width: 1000px;
	margin: 0 auto;
	padding-top: 20px;
	padding-bottom: 0;
}

h1, h3
{
	border-bottom: 2px solid #0d5;
	padding-bottom: 1em;
}

input, select
{
	background: black;
	color: white;
	border: 1px solid #054;
}

input[type='submit'], input[type='button']
{
	border: 2px ridge #0d5;
}

.blarg
{
	margin: 1em;
}

table
{
	width: 100%;
	border-collapse: collapse;
}

td:not([colspan='2'])
{
	border-bottom: 1px solid #043;
}
</style>
</head>
<body>
<div id="container">
<h1>AcmlmboardXD 2 Blargboard Converter</h1>
<br>
<?php

function phpescape($var)
{
	$var = addslashes($var);
	$var = str_replace('\\\'', '\'', $var);
	return '"'.$var.'"';
}

function Shake($len=16)
{
	$cset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPRQSTUVWXYZ0123456789";
	$salt = "";
	$chct = strlen($cset) - 1;
	while (strlen($salt) < $len)
		$salt .= $cset[mt_rand(0, $chct)];
	return $salt;
}

// Acmlmboard 1.x style
$footer = '</div></body></html>';

// pre-convert checks
	
$footer = '<br><br><a href="javascript:window.history.back();">Go back and try again</a></div></body></html>';

if (version_compare(PHP_VERSION, '5.3.0') < 0)
	die('Error: Blargboard requires PHP 5.3 or above.'.$footer);
	
@mkdir('templates_c');

if ($_POST['submit'])
{
	$boardusername = trim($_POST['boardusername']);
	$boardpassword = $_POST['boardpassword'];
	
	if (!$boardusername || !$boardpassword)
		die('Please enter a board username and password.'.$footer);
		
	if ($boardpassword !== $_POST['bpconfirm'])
		die('Error: the passwords you entered don\'t match.'.$footer);
	
	$test = new mysqli($_POST['dbserver'], $_POST['dbusername'], $_POST['dbpassword'], $_POST['dbname']);
	if ($test->connect_error)
		die('Error: failed to connect to the MySQL server: '.$test->connect_error.'<br><br>Check your parameters.'.$footer);
	
	$test->close();
	
	define('SALT', $salt);
	$saltfile = '<?php define(\'SALT\', '.$_POST['passsalt'].'); ?>';
	file_put_contents('config/salt.php', $saltfile);
	
	$kurifile = '<?php define(\'KURIKEY\', '.phpescape(Shake(32)).'); ?>';
	file_put_contents('config/kurikey.php', $kurifile);
	
	require('lib/mysql.php');
	require('lib/mysqlfunctions.php');
	$debugMode = 1;
	
	Upgrade();
	Import('database.sql');
	
	//here, instead of trying to detect a user's rank, just change the coloum name. way easier
	Query("ALTER TABLE {users} CHANGE powerlevel primarygroup int(8)")
		
?>
	<h3>Your new Blargboard board has been successfully installed!</h3>
	<br>
	You should now:
	<ul>
		<li>delete install.php and database.sql
		<li><a href="./?page=login">log in to your board</a> and configure it
	</ul>
	<br>
	Thank you for choosing Blargboard!<br>
	<br>
<?php
}
else
{
?>
	<form action="" method="POST">
	<div class="blarg">
	<table>
	
	<tr><td>Password Salt</td><td><input type="text" name="passsalt" value=""></td></tr>
	<tr><td>MySQL username:</td><td><input type="text" name="dbusername" size=64 value=""></td></tr>
	<tr><td>MySQL password:</td><td><input type="password" name="dbpassword" size=64 value=""></td></tr>
	<tr><td>MySQL database:</td><td><input type="text" name="dbname" size=64 value=""></td></tr>
	<tr><td colspan=2>&nbsp;</td></tr>
	
	<tr><td>Database table name prefix:</td><td><input type="text" name="dbprefix" size=64 value=""></td></tr>
	<tr><td colspan=2>This setting can be useful when the board's database is shared with other applications. If you're not sure what to put in there, leave it blank.</td></tr>
	<tr><td colspan=2>&nbsp;</td></tr>
	
	<tr><td>Board username:</td><td><input type="text" name="boardusername" size=64 maxlength=20 value=""></td></tr>
	<tr><td>Board password:</td><td><input type="password" name="boardpassword" size=64 value=""></td></tr>
	<tr><td>Confirm board password:</td><td><input type="password" name="bpconfirm" size=64 value=""></td></tr>
	<tr><td colspan=2>An owner account with these credentials will be created on your board after the install process has completed.</td></tr>
	<tr><td colspan=2>&nbsp;</td></tr>
	
	<tr><td colspan=2><input type="submit" name="submit" value="Install"></td></tr>
	
	</table>
	</div>
	</form>
<?php
}
?>
</div>
</body>
</html>